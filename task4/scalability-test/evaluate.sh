#!/bin/bash

N=5
CSV="results.csv"

echo "planner,run,execution_time_seconds" > "$CSV"

PLANNERS=("tfd" "optic")
DIRS=("../tfd" "../optic")
COMMANDS=(
    'planutils run tfd "domain.pddl problem.pddl"'
    'planutils run optic "-N -E -W1,1 domain.pddl problem.pddl"'
)

for i in "${!PLANNERS[@]}"; do

    planner="${PLANNERS[$i]}"
    dir="${DIRS[$i]}"
    cmd="${COMMANDS[$i]}"

    echo "=== $planner ==="

    pushd "$dir" > /dev/null || exit 1

    for ((run=1; run<=N; run++)); do

        echo "Run $run/$N"

        start=$(date +%s.%N)

        timeout 300 bash -c "$cmd" >/dev/null
        status=$?

        end=$(date +%s.%N)

        if [ "$status" -eq 124 ]; then
            echo "$planner,$run,-1" >> "../scalability-test/$CSV"
        else
            elapsed=$(awk -v s="$start" -v e="$end" \
                'BEGIN { printf "%.6f", e-s }')
            echo "$planner,$run,$elapsed" >> "../scalability-test/$CSV"
        fi

    done

    popd > /dev/null

done

echo "Results written to $CSV"