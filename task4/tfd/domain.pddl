;; changed wrt task 2:
;; - added duration to all actions (with :durative-actions requirement), because no solver allows for instantaneous and durative actions in the same domain
;; - added over all conditions to ensure that the rover and samples remain in the same location during the entire action duration (otherwise problem instances would become unsolvable due to the possibility of moving while holding a sample, which is not intended)
;; - added new actions for handling pressure-sensitive samples with capsules
;; - added predicates for is.docking-station and is.pressure-stabilizer (otherwise segmentation fault)
;; - removed :action-costs for TFD compatibility (cost handled via metric)

(define (domain abyssus-base-t4-tfd)

(:requirements
    :strips
    :typing
    :equality
    :durative-actions
    ;; :numeric-fluents
    :fluents
)

(:types
    locatable location - object
    rov sample capsule - locatable
    pressure-sensitive - sample
)

(:predicates
    ;; spatial
    (at ?x - locatable ?l - location)
    (connected ?from - location ?to - location)
    (narrow-connected ?from - location ?to - location)

    ;; rover
    ;; (handempty ?r - rov) ;; -> not present in task2, but it is present in task 1
    (carrying ?r - rov ?x - locatable)

    ;; samples
    (regular-sample ?s - sample)
    (stabilized ?s - sample)
    (unstabilized ?s - sample) ;; added because optic does not allow negative preconditions
    (stored ?s - sample)

    ;; Robot categories
    (small-robot ?r - rov)

    ;; environment
    (is-bio-vault ?l - location)
    (is-docking-station ?l - location)
    (is-pressure-stabilizer ?l - location)

    ;; capsule system
    (empty-capsule ?c - capsule)
    (sample-in-capsule ?s - sample ?c - capsule)
    (capsule-sealed ?c - capsule)
)

(:functions ;; tfd expects a precise order of definitions
    (capacity ?r - rov)
    (battery-level ?r - rov)
    (total-cost)
)

;; ------------------------------------------------------------
;; Movement
;; ------------------------------------------------------------

(:durative-action move
    :parameters (?r - rov ?from - location ?to - location)
    :duration (= ?duration 5)

    :condition (and
        (at start (at ?r ?from))
        
        (over all (connected ?from ?to))
        (over all (>= (battery-level ?r) 2))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
        (at end (decrease (battery-level ?r) 2))
        (at end (increase (total-cost) 2))
    )
)

(:durative-action move-through-narrow
    :parameters (?r - rov ?from - location ?to - location)
    :duration (= ?duration 7)

    :condition (and
        (at start (at ?r ?from))
        (over all (narrow-connected ?from ?to))
        (over all (small-robot ?r))
        (over all (>= (battery-level ?r) 2))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
        (at end (decrease (battery-level ?r) 2))
        (at end (increase (total-cost) 2))
    )
)

;; ------------------------------------------------------------
;; Regular sample handling
;; ------------------------------------------------------------

(:durative-action pickup-regular-sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?s ?l))
        (at start (regular-sample ?s))
        ;; (at start (handempty ?r))
        (over all (at ?r ?l))
        (over all (at ?s ?l))
        (over all (>= (capacity ?r) 1))
        (over all (>= (battery-level ?r) 1))
    )

    :effect (and
        ;; (at end (not (handempty ?r)))
        (at end (not (at ?s ?l)))
        (at end (carrying ?r ?s))
        (at end (decrease (battery-level ?r) 1))
        (at end (decrease (capacity ?r) 1))
        (at end (increase (total-cost) 1))
    )
)

(:durative-action drop-regular-sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?s))
        (at start (regular-sample ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
        (over all (>= (battery-level ?r) 1))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (at ?s ?l))
        ;; (at end (handempty ?r))
        (at end (increase (capacity ?r) 1))
        (at end (decrease (battery-level ?r) 1))
        (at end (increase (total-cost) 50))
    )
)

(:durative-action store-regular-sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (is-bio-vault ?l))
        (at start (carrying ?r ?s))
        (at start (regular-sample ?s))
        (at start (>= (battery-level ?r) 1))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
        (over all (>= (battery-level ?r) 1))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (stored ?s))
        ;; (at end (handempty ?r))
        (at end (decrease (battery-level ?r) 1))
        (at end (increase (total-cost) 0))
        (at end (increase (capacity ?r) 1))
    )
)

;; ------------------------------------------------------------
;; Pressure-sensitive sample handling with capsules
;; ------------------------------------------------------------

(:durative-action take-empty-capsule
    :parameters (?r - rov ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (empty-capsule ?c))
        ;; (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
        (over all (>= (capacity ?r) 1))
        (over all (>= (battery-level ?r) 1))
    )

    :effect (and
        (at end (not (at ?c ?l)))
        ;; (at end (not (handempty ?r)))
        (at end (carrying ?r ?c))
        (at end (decrease (battery-level ?r) 1))
        (at end (increase (total-cost) 1))
        (at end (decrease (capacity ?r) 1))
    )
)

(:durative-action encapsulate-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 3)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?s ?l))
        (at start (carrying ?r ?c))
        (at start (empty-capsule ?c))

        ;; capsule must remain stable in same location
        (over all (at ?r ?l))
        (over all (at ?s ?l))
        (over all (carrying ?r ?c))
        (over all (empty-capsule ?c))
        (over all(>= (battery-level ?r) 1))
    )

    :effect (and
        (at end (not (empty-capsule ?c)))
        (at end (sample-in-capsule ?s ?c))
        (at end (not (at ?s ?l)))
        (at end (capsule-sealed ?c))
        
        (at end (decrease (battery-level ?r) 1))
        (at end (increase (total-cost) 5))
    )
)

(:durative-action pickup-sensitive-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))
        ;; (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
        (over all (>= (battery-level ?r) 1))
        (over all (>= (capacity ?r) 1))
    )

    :effect (and
        ;; (at end (not (handempty ?r)))
        (at end (not (at ?c ?l)))
        (at end (carrying ?r ?c))
        (at end (decrease (battery-level ?r) 1))
        (at end (decrease (capacity ?r) 1))
        (at end (increase (total-cost) 1))
    )
)

(:durative-action drop-sensitive-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?c))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (>= (battery-level ?r) 1))
    )

    :effect (and
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        ;; (at end (handempty ?r))
        (at end (decrease (battery-level ?r) 1))
        (at end (increase (total-cost) 1))
        (at end (increase (capacity ?r) 1))
    )
)

(:durative-action stabilize-capsule
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 5)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?c))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))
        (at start (unstabilized ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (is-pressure-stabilizer ?l))

        ; why here not (at ?c ?l)
    )

    :effect (and
        (at end (stabilized ?s))
        (at end (increase (total-cost) 10))
    )
)

(:durative-action store-sensitive-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (is-bio-vault ?l))
        (at start (carrying ?r ?c))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))
        (at start (stabilized ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (is-bio-vault ?l))
        (over all (>= (battery-level ?r) 1))
    )

    :effect (and
        (at end (stored ?s))
        (at end (empty-capsule ?c))
        (at end (not (sample-in-capsule ?s ?c)))
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        ;; (at end (handempty ?r))
        (at end (decrease (battery-level ?r) 1))
        (at end (increase (total-cost) 1))
        (at end (increase (capacity ?r) 1))
    )
)

;; ------------------------------------------------------------
;; Recharge
;; ------------------------------------------------------------

(:durative-action recharge
    :parameters (?r - rov ?l - location)
    :duration (= ?duration 5)
    :condition (and 
        (at start (is-docking-station ?l))
        (over all (at ?r ?l))
        (over all (< (battery-level ?r) 10))
    )

    :effect (and 
        (at end (assign (battery-level ?r) 30))
        (at end (increase (total-cost) 4))
    )
)

)
