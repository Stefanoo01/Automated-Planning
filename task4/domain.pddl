(define (domain abyssus-base)

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
    pressure-sensitive - sample

    capsule - locatable
)

(:predicates
    ;; spatial
    (at ?x - locatable ?l - location)
    (connected ?from - location ?to - location)

    ;; rover
    (handempty ?r - rov)
    (carrying ?r - rov ?x - locatable)

    ;; samples
    (regular-sample ?s - sample)
    (stabilized ?s - sample)
    (unstabilized ?s - sample)
    (stored ?s - sample)

    ;; environment
    (bio-vault ?l - location)
    (is-docking-station ?l - location)
    (is-pressure-stabilizer ?l - location)

    ;; capsule system
    (empty-capsule ?c - capsule)
    (sample-in-capsule ?s - sample ?c - capsule)
    (capsule-sealed ?c - capsule)
)

;; ------------------------------------------------------------
;; MOVE
;; ------------------------------------------------------------

(:durative-action move
    :parameters (?r - rov ?from - location ?to - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?from))

        (over all (connected ?from ?to))
    )

    :effect (and
        (at start (not (at ?r ?from)))
        (at end (at ?r ?to))
    )
)

;; ------------------------------------------------------------
;; REGULAR SAMPLES
;; ------------------------------------------------------------

(:durative-action pickup-regular-sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?s ?l))
        (at start (regular-sample ?s))
        (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?s ?l))
    )

    :effect (and
        (at end (not (handempty ?r)))
        (at end (not (at ?s ?l)))
        (at end (carrying ?r ?s))
    )
)

(:durative-action drop-regular-sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?s))
        (at start (regular-sample ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (at ?s ?l))
        (at end (handempty ?r))
    )
)

(:durative-action store-regular-sample
    :parameters (?r - rov ?s - sample ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (bio-vault ?l))
        (at start (carrying ?r ?s))
        (at start (regular-sample ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?s))
    )

    :effect (and
        (at end (not (carrying ?r ?s)))
        (at end (stored ?s))
        (at end (handempty ?r))
    )
)

;; ------------------------------------------------------------
;; CAPSULE HANDLING
;; ------------------------------------------------------------

(:durative-action take-empty-capsule
    :parameters (?r - rov ?c - capsule ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (empty-capsule ?c))
        (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
    )

    :effect (and
        (at end (not (at ?c ?l)))
        (at end (not (handempty ?r)))
        (at end (carrying ?r ?c))
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
    )

    :effect (and
        (at end (not (empty-capsule ?c)))
        (at end (sample-in-capsule ?s ?c))
        (at end (not (at ?s ?l)))
        (at end (capsule-sealed ?c))
    )
)

(:durative-action pickup-sensitive-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (at ?c ?l))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))
        (at start (handempty ?r))

        (over all (at ?r ?l))
        (over all (at ?c ?l))
    )

    :effect (and
        (at end (not (handempty ?r)))
        (at end (not (at ?c ?l)))
        (at end (carrying ?r ?c))
    )
)

(:durative-action drop-sensitive-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (carrying ?r ?c))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
    )

    :effect (and
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        (at end (handempty ?r))
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
    )

    :effect (and
        (at end (stabilized ?s))
    )
)

(:durative-action store-sensitive-sample
    :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
    :duration (= ?duration 0.01)

    :condition (and
        (at start (at ?r ?l))
        (at start (bio-vault ?l))
        (at start (carrying ?r ?c))
        (at start (sample-in-capsule ?s ?c))
        (at start (capsule-sealed ?c))
        (at start (stabilized ?s))

        (over all (at ?r ?l))
        (over all (carrying ?r ?c))
    )

    :effect (and
        (at end (stored ?s))
        (at end (empty-capsule ?c))
        (at end (not (sample-in-capsule ?s ?c)))
        (at end (not (carrying ?r ?c)))
        (at end (at ?c ?l))
        (at end (handempty ?r))
    )
)

)