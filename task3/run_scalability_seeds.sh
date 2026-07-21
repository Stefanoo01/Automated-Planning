#!/usr/bin/env bash

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

DOMAIN="${DOMAIN:-$SCRIPT_DIR/domain.hddl}"
TEST_ROOT="${TEST_ROOT:-$SCRIPT_DIR/scalability-test}"
RUN_ID="${RUN_ID:-$(date +%Y%m%d-%H%M%S)}"
RESULTS_DIR="${RESULTS_DIR:-$TEST_ROOT/seed-results/$RUN_ID}"

SEEDS="${SEEDS:-1 2 3 4 5}"
FOLDERS="${FOLDERS:-p1 p2 p3 p4 p5 p6 p7}"
PLANNERS="${PLANNERS:-panda lilotane}"
PROBLEM_PATTERN="${PROBLEM_PATTERN:-problem*.hddl}"

PANDA_SIF="${PANDA_SIF:-/root/.planutils/packages/panda/panda.sif}"
PANDA_TIMELIMIT="${PANDA_TIMELIMIT:-1800}"
LILOTANE_TIMELIMIT="${LILOTANE_TIMELIMIT:-1800}"

# Optional outer timeout for each planner command. The planners already receive
# their own timelimit by default; leave this at 0 unless a hard shell timeout is needed.
COMMAND_TIMEOUT_SECONDS="${COMMAND_TIMEOUT_SECONDS:-0}"

KEEP_PANDA_INTERMEDIATES="${KEEP_PANDA_INTERMEDIATES:-0}"

ACTION_NAMES='visit|unvisit|mark-sensitive-done|mark-regular-done|move|move-through-narrow|take-empty-capsule|encapsulate-sample|pickup-sensitive-sample|drop-sensitive-sample|stabilize-capsule|store-sensitive-sample|pickup-regular-sample|drop-regular-sample|store-regular-sample'
ACTION_RE="^[0-9]+ (${ACTION_NAMES}) "

RAW_CSV="$RESULTS_DIR/raw_results.csv"
SUMMARY_BY_PROBLEM_CSV="$RESULTS_DIR/summary_by_problem.csv"
SUMMARY_BY_FOLDER_CSV="$RESULTS_DIR/summary_by_folder.csv"

die() {
    echo "Error: $*" >&2
    exit 1
}

now_ns() {
    date +%s%N
}

elapsed_seconds() {
    awk -v start="$1" -v end="$2" 'BEGIN { printf "%.3f", (end - start) / 1000000000 }'
}

csv_quote() {
    local value="${1//\"/\"\"}"
    printf '"%s"' "$value"
}

append_result() {
    local folder="$1"
    local problem="$2"
    local planner="$3"
    local seed="$4"
    local status="$5"
    local exit_code="$6"
    local time_seconds="$7"
    local actions="$8"
    local log_file="$9"
    local plan_file="${10}"

    {
        printf "%s,%s,%s,%s,%s,%s,%s,%s," \
            "$folder" "$problem" "$planner" "$seed" "$status" "$exit_code" "$time_seconds" "$actions"
        csv_quote "$log_file"
        printf ","
        csv_quote "$plan_file"
        printf "\n"
    } >> "$RAW_CSV"
}

run_step() {
    local output_file="$1"
    shift

    if [ "$COMMAND_TIMEOUT_SECONDS" -gt 0 ]; then
        timeout "$COMMAND_TIMEOUT_SECONDS" "$@" > "$output_file" 2>&1
    else
        "$@" > "$output_file" 2>&1
    fi
}

classify_status() {
    local exit_code="$1"
    local actions="$2"

    if [ "$exit_code" -eq 124 ]; then
        printf "timeout"
    elif [ "$exit_code" -ne 0 ]; then
        printf "failed"
    elif [ "$actions" -eq 0 ]; then
        printf "no_plan"
    else
        printf "solved"
    fi
}

count_plan_actions() {
    local plan_file="$1"

    if [ ! -f "$plan_file" ]; then
        printf "0"
        return
    fi

    wc -l < "$plan_file" | tr -d ' '
}

combine_logs() {
    local combined_log="$1"
    shift

    : > "$combined_log"
    while [ "$#" -gt 0 ]; do
        local label="$1"
        local file="$2"
        shift 2

        {
            printf "### %s\n" "$label"
            if [ -f "$file" ]; then
                cat "$file"
            fi
            printf "\n"
        } >> "$combined_log"
    done
}

run_panda() {
    local folder="$1"
    local problem_path="$2"
    local problem_name="$3"
    local seed="$4"
    local run_dir="$RESULTS_DIR/$folder/$problem_name/panda/seed-$seed"
    local log_file="$run_dir/panda.log"
    local plan_file="$run_dir/panda.plan"
    local parser_log="$run_dir/panda-parser.log"
    local grounder_log="$run_dir/panda-grounder.log"
    local engine_log="$run_dir/panda-engine.log"
    local decoded_log="$run_dir/panda-decoded-plan.log"
    local parsed_file="$run_dir/temp.parsed"
    local psas_file="$run_dir/$folder-$problem_name.psas"
    local start_ns end_ns elapsed exit_code actions status

    mkdir -p "$run_dir"
    : > "$plan_file"

    start_ns="$(now_ns)"

    run_step "$parser_log" apptainer exec "$PANDA_SIF" /planner/pandaPIparser "$DOMAIN" "$problem_path" "$parsed_file"
    exit_code="$?"

    if [ "$exit_code" -eq 0 ]; then
        run_step "$grounder_log" apptainer exec "$PANDA_SIF" /planner/pandaPIgrounder -q "$parsed_file" "$psas_file"
        exit_code="$?"
    else
        : > "$grounder_log"
    fi

    if [ "$exit_code" -eq 0 ]; then
        run_step "$engine_log" apptainer exec "$PANDA_SIF" /planner/pandaPIengine \
            "--seed=$seed" \
            "--timelimit=$PANDA_TIMELIMIT" \
            --gValue=none \
            --suboptimal \
            "--heuristic=rc2(ff)" \
            "$psas_file"
        exit_code="$?"
    else
        : > "$engine_log"
    fi

    if [ "$exit_code" -eq 0 ]; then
        run_step "$decoded_log" apptainer exec "$PANDA_SIF" /planner/pandaPIparser -c "$engine_log"
        exit_code="$?"
        grep -E "$ACTION_RE" "$decoded_log" > "$plan_file" || true
    else
        : > "$decoded_log"
    fi

    end_ns="$(now_ns)"
    elapsed="$(elapsed_seconds "$start_ns" "$end_ns")"
    actions="$(count_plan_actions "$plan_file")"
    status="$(classify_status "$exit_code" "$actions")"

    combine_logs "$log_file" \
        "panda parser" "$parser_log" \
        "panda grounder" "$grounder_log" \
        "panda engine" "$engine_log" \
        "panda decoded plan" "$decoded_log"

    if [ "$KEEP_PANDA_INTERMEDIATES" != "1" ]; then
        rm -f "$parsed_file" "$psas_file"
    fi

    append_result "$folder" "$problem_name" "panda" "$seed" "$status" "$exit_code" "$elapsed" "$actions" "$log_file" "$plan_file"
    printf "%-3s %-12s %-8s seed=%-5s status=%-8s time=%8ss actions=%s\n" \
        "$folder" "$problem_name" "panda" "$seed" "$status" "$elapsed" "$actions"
}

run_lilotane() {
    local folder="$1"
    local problem_path="$2"
    local problem_name="$3"
    local seed="$4"
    local run_dir="$RESULTS_DIR/$folder/$problem_name/lilotane/seed-$seed"
    local log_file="$run_dir/lilotane.log"
    local plan_file="$run_dir/lilotane.plan"
    local start_ns end_ns elapsed exit_code actions status

    mkdir -p "$run_dir"
    : > "$plan_file"

    start_ns="$(now_ns)"
    run_step "$log_file" lilotane "$DOMAIN" "$problem_path" -v=2 -co=0 "-s=$seed" "-T=$LILOTANE_TIMELIMIT"
    exit_code="$?"
    end_ns="$(now_ns)"

    if [ "$exit_code" -eq 0 ]; then
        awk '/^==>$/{flag=1; next} /^<==$/{flag=0} flag' "$log_file" \
            | grep -E "$ACTION_RE" > "$plan_file" || true
    fi

    elapsed="$(elapsed_seconds "$start_ns" "$end_ns")"
    actions="$(count_plan_actions "$plan_file")"
    status="$(classify_status "$exit_code" "$actions")"

    append_result "$folder" "$problem_name" "lilotane" "$seed" "$status" "$exit_code" "$elapsed" "$actions" "$log_file" "$plan_file"
    printf "%-3s %-12s %-8s seed=%-5s status=%-8s time=%8ss actions=%s\n" \
        "$folder" "$problem_name" "lilotane" "$seed" "$status" "$elapsed" "$actions"
}

write_summaries() {
    {
        echo "folder,problem,planner,total_runs,solved_runs,failed_runs,avg_time_all_seconds,avg_time_solved_seconds,avg_actions_solved"
        awk -F, '
            NR > 1 {
                key = $1 SUBSEP $2 SUBSEP $3
                label[key] = $1 "," $2 "," $3
                total[key] += 1
                time_all[key] += $7
                if ($5 == "solved") {
                    solved[key] += 1
                    time_solved[key] += $7
                    actions_solved[key] += $8
                } else {
                    failed[key] += 1
                }
            }
            END {
                for (key in total) {
                    avg_all = sprintf("%.3f", time_all[key] / total[key])
                    avg_solved_time = solved[key] ? sprintf("%.3f", time_solved[key] / solved[key]) : "NA"
                    avg_actions = solved[key] ? sprintf("%.3f", actions_solved[key] / solved[key]) : "NA"
                    printf "%s,%d,%d,%d,%s,%s,%s\n", label[key], total[key], solved[key], failed[key], avg_all, avg_solved_time, avg_actions
                }
            }
        ' "$RAW_CSV" | sort -t, -k1,1V -k2,2 -k3,3
    } > "$SUMMARY_BY_PROBLEM_CSV"

    {
        echo "folder,planner,total_runs,solved_runs,failed_runs,avg_time_all_seconds,avg_time_solved_seconds,avg_actions_solved"
        awk -F, '
            NR > 1 {
                key = $1 SUBSEP $3
                label[key] = $1 "," $3
                total[key] += 1
                time_all[key] += $7
                if ($5 == "solved") {
                    solved[key] += 1
                    time_solved[key] += $7
                    actions_solved[key] += $8
                } else {
                    failed[key] += 1
                }
            }
            END {
                for (key in total) {
                    avg_all = sprintf("%.3f", time_all[key] / total[key])
                    avg_solved_time = solved[key] ? sprintf("%.3f", time_solved[key] / solved[key]) : "NA"
                    avg_actions = solved[key] ? sprintf("%.3f", actions_solved[key] / solved[key]) : "NA"
                    printf "%s,%d,%d,%d,%s,%s,%s\n", label[key], total[key], solved[key], failed[key], avg_all, avg_solved_time, avg_actions
                }
            }
        ' "$RAW_CSV" | sort -t, -k1,1V -k2,2
    } > "$SUMMARY_BY_FOLDER_CSV"
}

main() {
    [ -f "$DOMAIN" ] || die "domain not found: $DOMAIN"
    [ -d "$TEST_ROOT" ] || die "test root not found: $TEST_ROOT"

    for command_name in awk grep sort wc date; do
        command -v "$command_name" >/dev/null 2>&1 || die "missing command: $command_name"
    done

    if printf "%s\n" "$PLANNERS" | grep -Eq '(^|[[:space:]])panda($|[[:space:]])'; then
        command -v apptainer >/dev/null 2>&1 || die "missing command: apptainer (run inside the myplanutils container)"
        [ -f "$PANDA_SIF" ] || die "PANDA SIF not found: $PANDA_SIF"
    fi

    if printf "%s\n" "$PLANNERS" | grep -Eq '(^|[[:space:]])lilotane($|[[:space:]])'; then
        command -v lilotane >/dev/null 2>&1 || die "missing command: lilotane (run inside the myplanutils container)"
    fi

    mkdir -p "$RESULTS_DIR"
    echo "folder,problem,planner,seed,status,exit_code,time_seconds,actions,log_file,plan_file" > "$RAW_CSV"

    read -r -a seed_list <<< "$SEEDS"
    read -r -a folder_list <<< "$FOLDERS"
    read -r -a planner_list <<< "$PLANNERS"

    echo "Domain: $DOMAIN"
    echo "Test root: $TEST_ROOT"
    echo "Results: $RESULTS_DIR"
    echo "Seeds: ${seed_list[*]}"
    echo "Planners: ${planner_list[*]}"
    echo

    local found_any=0
    local folder problem_path problem_name planner seed

    for folder in "${folder_list[@]}"; do
        local folder_dir="$TEST_ROOT/$folder"
        if [ ! -d "$folder_dir" ]; then
            echo "Skipping missing folder: $folder_dir" >&2
            continue
        fi

        while IFS= read -r problem_path; do
            found_any=1
            problem_name="$(basename "$problem_path" .hddl)"

            for seed in "${seed_list[@]}"; do
                for planner in "${planner_list[@]}"; do
                    case "$planner" in
                        panda)
                            run_panda "$folder" "$problem_path" "$problem_name" "$seed"
                            ;;
                        lilotane)
                            run_lilotane "$folder" "$problem_path" "$problem_name" "$seed"
                            ;;
                        *)
                            die "unknown planner: $planner"
                            ;;
                    esac
                done
            done
        done < <(find "$folder_dir" -maxdepth 1 -type f -name "$PROBLEM_PATTERN" | sort)
    done

    [ "$found_any" -eq 1 ] || die "no problems matched $TEST_ROOT/{${FOLDERS}}/$PROBLEM_PATTERN"

    write_summaries

    echo
    echo "Raw results: $RAW_CSV"
    echo "Summary by problem: $SUMMARY_BY_PROBLEM_CSV"
    echo "Summary by folder: $SUMMARY_BY_FOLDER_CSV"
}

main "$@"
