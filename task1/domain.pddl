(define (domain abyssus-base)
    (:requirements
        :strips
        :typing
        :negative-preconditions
        :equality
        :fluents
        :action-costs
        :quantified-preconditions
    )

    (:types
        locatable location - object
        rov sample capsule - locatable
        pressure-sensitive - sample
        pressure-stabilizer docking-station - location
    )

    (:predicates
        ;; Positions and movement
        (at ?x - locatable ?l - location)
        (connected ?from - location ?to - location)

        ;; ROV state
        (handempty ?r - rov)
        (carrying ?r - rov ?s - sample)

        ;; Sample categories and final state
        (regular-sample ?s - sample)
        (stabilized ?s - sample)
        (stored ?s - sample)

        ;; Special locations
        (bio-vault ?l - location)

        ;; Capsule state
        (empty-capsule ?c - capsule)
        (sample-in-capsule ?s - sample ?c - capsule)
        (capsule-sealed ?c - capsule)
    )

    (:functions
        (battery-level ?r - rov)
        (total-cost)
    )

    ;; ------------------------------------------------------------
    ;; Movement
    ;; ------------------------------------------------------------

    (:action move
        :parameters (?r - rov ?from - location ?to - location)
        :precondition (and
            (not (= ?from ?to))
            (at ?r ?from)
            (connected ?from ?to)
            (>= (battery-level ?r) 2)
        )
        :effect (and
            (not (at ?r ?from))
            (at ?r ?to)
            (decrease (battery-level ?r) 2)
            (increase (total-cost) 2)
        )
    )

    ;; ------------------------------------------------------------
    ;; Regular sample handling
    ;; ------------------------------------------------------------

    (:action pickup-regular-sample
        :parameters (?r - rov ?s - sample ?l - location)
        :precondition (and
            (at ?r ?l)
            (at ?s ?l)
            (regular-sample ?s)
            (handempty ?r)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (handempty ?r))
            (not (at ?s ?l))
            (carrying ?r ?s)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    (:action drop-regular-sample
        :parameters (?r - rov ?s - sample ?l - location)
        :precondition (and
            (at ?r ?l)
            (carrying ?r ?s)
            (regular-sample ?s)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (carrying ?r ?s))
            (at ?s ?l)
            (handempty ?r)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    (:action store-regular-sample
        :parameters (?r - rov ?s - sample ?l - location)
        :precondition (and
            (at ?r ?l)
            (bio-vault ?l)
            (carrying ?r ?s)
            (regular-sample ?s)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (carrying ?r ?s))
            (stored ?s)
            (handempty ?r)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 2)
        )
    )

    ;; ------------------------------------------------------------
    ;; Pressure-sensitive sample handling with capsules
    ;; ------------------------------------------------------------

    (:action encapsulate-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (at ?s ?l)
            (at ?c ?l)
            (empty-capsule ?c)
            (handempty ?r)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (empty-capsule ?c))
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 2)
        )
    )

    (:action pickup-sensitive-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (at ?s ?l)
            (at ?c ?l)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (handempty ?r)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (handempty ?r))
            (not (at ?s ?l))
            (not (at ?c ?l))
            (carrying ?r ?s)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    (:action drop-sensitive-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (carrying ?r ?s)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (carrying ?r ?s))
            (at ?s ?l)
            (at ?c ?l)
            (handempty ?r)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    (:action stabilize-capsule
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - pressure-stabilizer)
        :precondition (and
            (at ?r ?l)
            (at ?s ?l)
            (at ?c ?l)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (not (stabilized ?s))
            (>= (battery-level ?r) 2)
        )
        :effect (and
            (stabilized ?s)
            (decrease (battery-level ?r) 2)
            (increase (total-cost) 3)
        )
    )

    (:action store-sensitive-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (bio-vault ?l)
            (carrying ?r ?s)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (stabilized ?s)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (carrying ?r ?s))
            (stored ?s)
            (handempty ?r)
            (increase (total-cost) 2)
            (decrease (battery-level ?r) 1)
        )
    )

    ;; ------------------------------------------------------------
    ;; Recharge
    ;; ------------------------------------------------------------

    (:action recharge
        :parameters (?r - rov ?l - docking-station)
        :precondition (and
            (at ?r ?l)
            (< (battery-level ?r) 30)
        )
        :effect (and
            (assign (battery-level ?r) 30)
            (increase (total-cost) 4)
        )
    )
)