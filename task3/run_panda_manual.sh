#!/bin/bash

start=$(date +%s.%N)

DOMAIN=${1:-domain2.hddl}
PROBLEM=${2:-problem2.hddl}
MODE=${3:-action_astar}

SIF="$HOME/.planutils/packages/panda/panda.sif"

echo "Parsing..."
apptainer exec "$SIF" /planner/pandaPIparser "$DOMAIN" "$PROBLEM" output.htn || exit 1

echo "Grounding..."
apptainer exec "$SIF" /planner/pandaPIgrounder output.htn output.sas || exit 1

echo "Planning mode: $MODE"

if [ "$MODE" = "fast" ]; then
    apptainer exec "$SIF" /planner/pandaPIengine \
        --progression \
        --suboptimal \
        output.sas | tee panda.log

elif [ "$MODE" = "action_astar" ]; then
    apptainer exec "$SIF" /planner/pandaPIengine \
        --progression \
        --gValue action \
        --astarweight 1 \
        --timelimit 900 \
        output.sas | tee panda.log

elif [ "$MODE" = "sat" ]; then
    apptainer exec "$SIF" /planner/pandaPIengine \
        --sat \
        --optimisation \
        --timelimit 300 \
        output.sas | tee panda.log

else
    echo "Unknown mode: $MODE"
    echo "Use: fast | action_astar | sat"
    exit 1
fi

grep -E '^[0-9]+ (move|move-through-narrow|take-empty-capsule|encapsulate-sample|pickup-sensitive-sample|drop-sensitive-sample|stabilize-capsule|store-sensitive-sample|pickup-regular-sample|drop-regular-sample|store-regular-sample|mark-sensitive-done|mark-regular-done) ' panda.log > solution.plan

end=$(date +%s.%N)

echo "Execution time: $(echo "$end - $start" | bc) seconds"
echo "Plan saved in solution.plan"
echo "Full log saved in panda.log"