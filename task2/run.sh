#!/bin/bash

start=$(date +%s.%N)

planutils run enhsp "-o domain.pddl -f problem.pddl -planner opt-blind" | grep '^[0-9]' > solution.plan

end=$(date +%s.%N)

echo "Execution time: $(awk -v start="$start" -v end="$end" 'BEGIN { print end - start }') seconds"