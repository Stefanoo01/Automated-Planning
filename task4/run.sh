#!/bin/bash

start=$(date +%s.%N)

planutils run optic "-N -E -W1,1 domain.pddl problem.pddl" | grep '^[0-9]' > solution.plan

end=$(date +%s.%N)

echo "Execution time: $(awk -v start="$start" -v end="$end" 'BEGIN { print end - start }') seconds"