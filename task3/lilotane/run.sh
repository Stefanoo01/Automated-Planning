#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TASK_DIR="$(dirname "$SCRIPT_DIR")"

case "${1:-handover}" in
    handover)
        domain="$TASK_DIR/domain.hddl"
        ;;
    noho|no-handover)
        domain="$TASK_DIR/domain-noho.hddl"
        ;;
    *)
        echo "Usage: $0 [handover|noho]" >&2
        exit 2
        ;;
esac

problem="$TASK_DIR/problem.hddl"

start=$(date +%s.%N)

lilotane "$domain" "$problem" -v=2 -co=0 | tee "$SCRIPT_DIR/lilotane.log"

awk '/==>/{flag=1; next} /<==/{flag=0} flag' "$SCRIPT_DIR/lilotane.log" \
| grep -E '^[0-9]+ (visit|unvisit|mark-sensitive-done|mark-regular-done|move|move-through-narrow|take-empty-capsule|encapsulate-sample|pickup-sensitive-sample|drop-sensitive-sample|stabilize-capsule|store-sensitive-sample|pickup-regular-sample|drop-regular-sample|store-regular-sample|mark-sensitive-done|mark-regular-done) ' > "$SCRIPT_DIR/solution.plan"

end=$(date +%s.%N)

echo "Execution time: $(echo "$end - $start" | bc) seconds"
