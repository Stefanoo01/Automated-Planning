;; changed wrt task 4:
;; - ROV capacity is represented with discrete predicates as in task 3
;; - remove "-" symbols, substituted them with "_" symbols
;; - pressure-sensitive samples are represented with the predicates "stabilized" and "unstabilized"

(define (domain abyssus-base-t5)

(:requirements
    :strips
    :typing
    :equality
    :durative-actions
)

(:types
    locatable - object
    location - object
    rov - locatable
    sample - locatable
    capsule - locatable
    capacity_number - object
)

(:predicates
    ;; spatial
    (at ?x - locatable ?l - location)
    (connected ?from - location ?to - location)
    (narrow_connected ?from - location ?to - location)

    ;; rover
    ;; (handempty ?r - rov) ;; -> not present in task2, but it is present in task 1
    (carrying ?r - rov ?x - locatable)

    ;; discrete capacity
    (capacity ?r - rov ?c - capacity_number)
    (capacity_predecessor ?lower - capacity_number ?higher - capacity_number)

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

;; ------------------------------------------------------------
;; Movement
;; ------------------------------------------------------------

(:durative-action move
    :parameters (?r - rov ?from - location ?to - location)
    :duration (= ?duration 5)

    :condition (and
        (at start (at ?r ?from))
        
        (over all (connected ?from ?to))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
    )
)

(:durative-action move_through_narrow
    :parameters (?r - rov ?from - location ?to - location)
    :duration (= ?duration 7)

    :condition (and
        (at start (at ?r ?from))
        (over all (narrow_connected ?from ?to))
        (over all (small_robot ?r))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
    )
)

;; ------------------------------------------------------------
;; Regular sample handling
;; ------------------------------------------------------------

(:durative-action pickup_regular_sample
    :parameters (?r - rov ?s - sample ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?s ?l))
        (at start (regular_sample ?s))
        (at start (capacity ?r ?c_high))
        (at start (capacity_predecessor ?c_low ?c_high))
        ;; (at start (handempty ?r))
        (over all (at ?r ?l))
        (over all (at ?s ?l))
    )

    :effect (and
        ;; (at end (not (handempty ?r)))
        (at end (not (at ?s ?l)))
        (at end (carrying ?r ?s))
        (at start (not (capacity ?r ?c_high)))
        (at start (capacity ?r ?c_low))
    )
)

(:durative-action drop_regular_sample
    :parameters (?r - rov ?s - sample ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?s))
        (at start (regular_sample ?s))
        (at start (capacity ?r ?c_low))
        (at start (capacity_predecessor ?c_low ?c_high))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (at ?s ?l))
        ;; (at end (handempty ?r))
        (at end (not (capacity ?r ?c_low)))
        (at end (capacity ?r ?c_high))
    )
)

(:durative-action store_regular_sample
    :parameters (?r - rov ?s - sample ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (is_bio_vault ?l))
        (at start (carrying ?r ?s))
        (at start (regular_sample ?s))
        (at start (capacity ?r ?c_low))
        (at start (capacity_predecessor ?c_low ?c_high))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (stored ?s))
        ;; (at end (handempty ?r))
        (at end (not (capacity ?r ?c_low)))
        (at end (capacity ?r ?c_high))
    )
)

;; ------------------------------------------------------------
;; pressure_sensitive sample handling with capsules
;; ------------------------------------------------------------

(:durative-action take_empty_capsule
    :parameters (?r - rov ?c - capsule ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (empty_capsule ?c))
        (at start (capacity ?r ?c_high))
        (at start (capacity_predecessor ?c_low ?c_high))
        ;; (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
    )

    :effect (and
        (at end (not (at ?c ?l)))
        ;; (at end (not (handempty ?r)))
        (at end (carrying ?r ?c))
        (at start (not (capacity ?r ?c_high)))
        (at start (capacity ?r ?c_low))
    )
)

(:durative-action encapsulate_sample
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
        ;; (over all (pressure_sensitive_sample ?s))
    )

    :effect (and
        (at end (not (empty_capsule ?c)))
        (at end (sample_in_capsule ?s ?c))
        (at end (not (at ?s ?l)))
        (at end (capsule_sealed ?c))
    )
)

(:durative-action pickup_sensitive_sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))
        (at start (capacity ?r ?c_high))
        (at start (capacity_predecessor ?c_low ?c_high))
        ;; (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
        ;; (over all (pressure_sensitive_sample ?s))
    )

    :effect (and
        ;; (at end (not (handempty ?r)))
        (at end (not (at ?c ?l)))
        (at end (carrying ?r ?c))
        (at start (not (capacity ?r ?c_high)))
        (at start (capacity ?r ?c_low))
    )
)

(:durative-action drop_sensitive_sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?c))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))
        (at start (capacity ?r ?c_low))
        (at start (capacity_predecessor ?c_low ?c_high))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        ;; (over all (pressure_sensitive_sample ?s))
    )

    :effect (and
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        ;; (at end (handempty ?r))
        (at end (not (capacity ?r ?c_low)))
        (at end (capacity ?r ?c_high))
    )
)

(:durative-action stabilize_capsule
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
        (at end (not (unstabilized ?s)))
        (at end (stabilized ?s))
    )
)

(:durative-action store_sensitive_sample
    :parameters (?r - rov ?s - sample ?c - capsule ?l - location ?c_low - capacity_number ?c_high - capacity_number)
    :duration (= ?duration 1)

    :condition (and
        (at start (at ?r ?l))
        (at start (is_bio_vault ?l))
        (at start (carrying ?r ?c))
        (at start (sample_in_capsule ?s ?c))
        (at start (capsule_sealed ?c))
        (at start (stabilized ?s))
        (at start (capacity ?r ?c_low))
        (at start (capacity_predecessor ?c_low ?c_high))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
        (over all (is_bio_vault ?l))
        (over all (pressure_sensitive_sample ?s))
    )

    :effect (and
        (at end (stored ?s))
        (at end (empty_capsule ?c))
        (at end (not (sample_in_capsule ?s ?c)))
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        ;; (at end (handempty ?r))
        (at end (not (capacity ?r ?c_low)))
        (at end (capacity ?r ?c_high))
    )
)

)
