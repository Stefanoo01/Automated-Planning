#!/bin/bash

start=$(date +%s.%N)

lilotane domain2.hddl problem2.hddl -v=2 -co=0 | tee lilotane.log

awk '/==>/{flag=1; next} /<==/{flag=0} flag' lilotane.log \
| grep -E '^[0-9]+ (move|move-through-narrow|take-empty-capsule|encapsulate-sample|pickup-sensitive-sample|drop-sensitive-sample|stabilize-capsule|store-sensitive-sample|pickup-regular-sample|drop-regular-sample|store-regular-sample|mark-sensitive-done|mark-regular-done) ' > solution.plan

end=$(date +%s.%N)

echo "Execution time: $(echo "$end - $start" | bc) seconds"