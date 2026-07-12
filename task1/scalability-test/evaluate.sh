#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

DOMAIN="$SCRIPT_DIR/../domain.pddl"

HEURISTICS=("sat-aibr" "sat-hadd" "opt-hmax" "opt-blind")

CSV="$SCRIPT_DIR/results.csv"
N=5
SAVE_PLANS=true

echo "filename,run,solver,execution_time_seconds,length_of_plan" > "$CSV"

find "$SCRIPT_DIR" -type f -name "*.pddl" | while read -r problem; do

    problem_dir="$(dirname "$problem")"
    problem_name="$(basename "$problem")"
    problem_base="${problem_name%.pddl}"

    for ((run=1; run<=N; run++)); do
        for heuristic in "${HEURISTICS[@]}"; do

            echo "Running $problem_name (run $run/$N, $heuristic)..."

            if $SAVE_PLANS; then
                output="$problem_dir/${problem_base}_${heuristic}_run${run}.plan"
            else
                output=$(mktemp)
            fi

            start=$(date +%s.%N)

            plan_output=$(timeout 300 \
                planutils run enhsp \
                "-o $DOMAIN -f $problem -planner $heuristic" \
                | grep '^[0-9]')

            status=${PIPESTATUS[0]}

            echo "$plan_output" > "$output"

            end=$(date +%s.%N)

            if [ "$status" -eq 124 ]; then
                echo "Timeout after 5 minutes."
                echo "$problem_name,$run,$heuristic,-2,0" >> "$CSV"

            elif [ -n "$plan_output" ]; then
                elapsed=$(awk -v start="$start" -v end="$end" \
                    'BEGIN { printf "%.6f", end-start }')
                num_actions=$(echo "$plan_output" | wc -l)
                echo "$problem_name,$run,$heuristic,$elapsed,$num_actions" >> "$CSV"

            else
                echo "$problem_name,$run,$heuristic,-1,0" >> "$CSV"
            fi
        done
    done
done

echo "Results written to $CSV"