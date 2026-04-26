#!/bin/bash

start=$(date +%s.%N)

planutils run enhsp "-o domain.pddl -f problem.pddl -s AStar" | grep '^[0-9]' > solution.plan

end=$(date +%s.%N)

echo "Execution time: $(echo "$end - $start" | bc) seconds"