#!/bin/bash

start=$(date +%s.%N)

planutils run panda domain2.hddl problem2.hddl | tee panda.log

grep -E '^[0-9]+ (visit|unvisit|mark-sensitive-done|mark-regular-done|move|move-through-narrow|take-empty-capsule|encapsulate-sample|pickup-sensitive-sample|drop-sensitive-sample|stabilize-capsule|store-sensitive-sample|pickup-regular-sample|drop-regular-sample|store-regular-sample) ' panda.log > solution.plan

end=$(date +%s.%N)

echo "Execution time: $(echo "$end - $start" | bc) seconds"