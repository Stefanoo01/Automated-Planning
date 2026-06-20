;; changed wrt task 4:
;; - changed from :numeric-fluents to :fluents
;; - remove "-" symbols, substituted them with "_" symbols
;; - deleted pressure_sensitive type, which will be managed simply with the already-defined predicates "stabilized" and "unstabilized" -> for this, we also added :disjunctive-preconditions requirement

(define (domain abyssus-base-t5)

(:requirements
    :strips
    :typing
    :equality
    :durative-actions
    :fluents
)

(:types
    locatable - object
    location - object
    rov - locatable
    sample - locatable
    capsule - locatable
)

(:predicates
    ;; spatial
    (at ?x - locatable ?l - location)
    (connected ?from - location ?to - location)
    (narrow_connected ?from - location ?to - location)

    ;; rover
    ;; (handempty ?r - rov) ;; -> not present in task2, but it is present in task 1
    (carrying ?r - rov ?x - locatable)

    ;; samples
    (regular_sample ?s - sample)
    (pressure_sensitive_sample ?s - sample)
    (stabilized ?s - sample)
    (unstabilized ?s - sample) ;; added because optic does not allow negative preconditions
    (stored ?s - sample)

    ;; Robot categories
    (small_robot ?r - rov)

    ;; environment
    (is_bio_vault ?l - location)
    (is_docking_station ?l - location)
    (is_pressure_stabilizer ?l - location)

    ;; capsule system
    (empty_capsule ?c - capsule)
    (sample_in_capsule ?s - sample ?c - capsule)
    (capsule_sealed ?c - capsule)
)

(:functions ;; tfd expects a precise order of definitions
    (capacity ?r - rov)
    (battery_level ?r - rov)
    (total_cost)
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
        (over all (>= (battery_level ?r) 2))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
        (at end (decrease (battery_level ?r) 2))
        (at end (increase (total_cost) 2))
    )
)

(:durative-action move-through-narrow
    :parameters (?r - rov ?from - location ?to - location)
    :duration (= ?duration 7)

    :condition (and
        (at start (at ?r ?from))
        (over all (narrow_connected ?from ?to))
        (over all (small_robot ?r))
        (over all (>= (battery_level ?r) 2))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
        (at end (decrease (battery_level ?r) 2))
        (at end (increase (total_cost) 2))
    )
)

;; ------------------------------------------------------------
;; Regular sample handling
;; ------------------------------------------------------------

(:durative-action pickup-regular_sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?s ?l))
        (at start (regular_sample ?s))
        ;; (at start (handempty ?r))
        (over all (at ?r ?l))
        (over all (at ?s ?l))
        (over all (>= (capacity ?r) 1))
        (over all (>= (battery_level ?r) 1))
    )

    :effect (and
        ;; (at end (not (handempty ?r)))
        (at end (not (at ?s ?l)))
        (at end (carrying ?r ?s))
        (at end (decrease (battery_level ?r) 1))
        (at end (decrease (capacity ?r) 1))
        (at end (increase (total_cost) 1))
    )
)

(:durative-action drop-regular_sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?s))
        (at start (regular_sample ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
        (over all (>= (battery_level ?r) 1))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (at ?s ?l))
        ;; (at end (handempty ?r))
        (at end (increase (capacity ?r) 1))
        (at end (decrease (battery_level ?r) 1))
        (at end (increase (total_cost) 50))
    )
)

(:durative-action store-regular_sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (is_bio_vault ?l))
        (at start (carrying ?r ?s))
        (at start (regular_sample ?s))
        (at start (>= (battery_level ?r) 1))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
        (over all (>= (battery_level ?r) 1))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (stored ?s))
        ;; (at end (handempty ?r))
        (at end (decrease (battery_level ?r) 1))
        (at end (increase (total_cost) 0))
        (at end (increase (capacity ?r) 1))
    )
)

;; ------------------------------------------------------------
;; pressure_sensitive sample handling with capsules
;; ------------------------------------------------------------

(:durative-action take_empty_capsule
    :parameters (?r - rov ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (empty_capsule ?c))
        ;; (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
        (over all (>= (capacity ?r) 1))
        (over all (>= (battery_level ?r) 1))
    )

    :effect (and
        (at end (not (at ?c ?l)))
        ;; (at end (not (handempty ?r)))
        (at end (carrying ?r ?c))
        (at end (decrease (battery_level ?r) 1))
        (at end (increase (total_cost) 1))
        (at end (decrease (capacity ?r) 1))
    )
)

(:durative-action encapsulate-sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location)
    :duration (= ?duration 3)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?s ?l))
        (at start (carrying ?r ?c))
        (at start (empty_capsule ?c))

        ;; capsule must remain stable in same location
        (over all (at ?r ?l))
        (over all (at ?s ?l))
        (over all (carrying ?r ?c))
        (over all (empty_capsule ?c))
        (over all (pressure_sensitive_sample ?s))
        (over all(>= (battery_level ?r) 1))
    )

    :effect (and
        (at end (not (empty_capsule ?c)))
        (at end (sample_in_capsule ?s ?c))
        (at end (not (at ?s ?l)))
        (at end (capsule_sealed ?c))
        
        (at end (decrease (battery_level ?r) 1))
        (at end (increase (total_cost) 5))
    )
)

(:durative-action pickup-sensitive-sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))
        ;; (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
        (over all (pressure_sensitive_sample ?s))
        (over all (>= (battery_level ?r) 1))
        (over all (>= (capacity ?r) 1))
    )

    :effect (and
        ;; (at end (not (handempty ?r)))
        (at end (not (at ?c ?l)))
        (at end (carrying ?r ?c))
        (at end (decrease (battery_level ?r) 1))
        (at end (decrease (capacity ?r) 1))
        (at end (increase (total_cost) 1))
    )
)

(:durative-action drop-sensitive-sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?c))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (pressure_sensitive_sample ?s))
        (over all (>= (battery_level ?r) 1))
    )

    :effect (and
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        ;; (at end (handempty ?r))
        (at end (decrease (battery_level ?r) 1))
        (at end (increase (total_cost) 1))
        (at end (increase (capacity ?r) 1))
    )
)

(:durative-action stabilize-capsule
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location)
    :duration (= ?duration 5)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?c))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))
        (at start (unstabilized ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (is_pressure_stabilizer ?l))
        (over all (pressure_sensitive_sample ?s))

        ; why here not (at ?c ?l)
    )

    :effect (and
        (at end (stabilized ?s))
        (at end (increase (total_cost) 10))
    )
)

(:durative-action store-sensitive-sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (is_bio_vault ?l))
        (at start (carrying ?r ?c))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))
        (at start (stabilized ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (is_bio_vault ?l))
        (over all (pressure_sensitive_sample ?s))
        (over all (>= (battery_level ?r) 1))
    )

    :effect (and
        (at end (stored ?s))
        (at end (empty_capsule ?c))
        (at end (not (sample_in_capsule ?s ?c)))
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        ;; (at end (handempty ?r))
        (at end (decrease (battery_level ?r) 1))
        (at end (increase (total_cost) 1))
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
        (at start (is_docking_station ?l))
        (over all (at ?r ?l))
        (over all (< (battery_level ?r) 10))
    )

    :effect (and 
        (at end (assign (battery_level ?r) 30))
        (at end (increase (total_cost) 4))
    )
)

)
