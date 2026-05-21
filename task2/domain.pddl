(define (domain abyssus-base)
    (:requirements :strips :typing :negative-preconditions :equality :disjunctive-preconditions :quantified-preconditions :conditional-effects :fluents :action-costs)
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
     (narrow-connected ?from - location ?to - location)

        ;; ROV state
        (carrying ?r - rov ?x - locatable)

        ;; Sample categories and final state
        (regular-sample ?s - sample)
        (stabilized ?s - sample)
        (stored ?s - sample)

        ;; Robot categories
        (small-robot ?r - rov)

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
        (capacity ?r - rov)
    )

    ;; ------------------------------------------------------------
    ;; Movement
    ;; ------------------------------------------------------------

    (:action move
        :parameters (?r - rov ?from - location ?to - location)
        :precondition 
        (and 
            (at ?r ?from)
            (connected ?from ?to) 
            (not (= ?from ?to))
            (>= (battery-level ?r) 2)
        )
        :effect (and (at ?r ?to) (not (at ?r ?from)) (decrease (battery-level ?r) 2) (increase (total-cost) 2))
    )

    (:action move-through-narrow
        :parameters (?r - rov ?from - location ?to - location)
        :precondition (and (at ?r ?from) (narrow-connected ?from ?to) (small-robot ?r) (>= (battery-level ?r) 2))
        :effect (and (at ?r ?to) (not (at ?r ?from)) (decrease (battery-level ?r) 2) (increase (total-cost) 2))
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
            (>= (capacity ?r) 1)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (at ?s ?l))
            (carrying ?r ?s)
            (decrease (capacity ?r) 1)
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
            (increase (capacity ?r) 1)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 50)
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
            (increase (capacity ?r) 1)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 0)
        )
    )

    ;; ------------------------------------------------------------
    ;; Pressure-sensitive sample handling with capsules
    ;; ------------------------------------------------------------

    (:action take-empty-capsule
        :parameters (?r - rov ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (at ?c ?l)
            (empty-capsule ?c)
            (>= (capacity ?r) 1)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (at ?c ?l))
            (carrying ?r ?c)
            (decrease (capacity ?r) 1)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    (:action encapsulate-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (at ?s ?l)
            (carrying ?r ?c)
            (empty-capsule ?c)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (empty-capsule ?c))
            (not (at ?s ?l))
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 5)
        )
    )

    (:action pickup-sensitive-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (at ?c ?l)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (>= (capacity ?r) 1)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (at ?c ?l))
            (carrying ?r ?c)
            (decrease (capacity ?r) 1)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    (:action drop-sensitive-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (carrying ?r ?c)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (carrying ?r ?c))
            (at ?c ?l)
            (increase (capacity ?r) 1)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 100)
        )
    )

    (:action stabilize-capsule
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - pressure-stabilizer)
        :precondition (and
            (at ?r ?l)
            (at ?c ?l)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (not (stabilized ?s))
        )
        :effect (and
            (stabilized ?s)
            (increase (total-cost) 10)
        )
    )

    (:action store-sensitive-sample
        :parameters (?r - rov ?s - pressure-sensitive ?c - capsule ?l - location)
        :precondition (and
            (at ?r ?l)
            (bio-vault ?l)
            (carrying ?r ?c)
            (sample-in-capsule ?s ?c)
            (capsule-sealed ?c)
            (stabilized ?s)
            (>= (battery-level ?r) 1)
        )
        :effect (and
            (not (capsule-sealed ?c))
            (stored ?s)
            (empty-capsule ?c)
            (not (sample-in-capsule ?s ?c))
            (not (carrying ?r ?c))
            (at ?c ?l)
            (increase (capacity ?r) 1)
            (decrease (battery-level ?r) 1)
            (increase (total-cost) 1)
        )
    )

    ;; ------------------------------------------------------------
    ;; Recharge
    ;; ------------------------------------------------------------

    (:action recharge
        :parameters (?r - rov ?l - docking-station)
        :precondition (and (at ?r ?l) (< (battery-level ?r) 30))
        :effect (and (assign (battery-level ?r) 30) (increase (total-cost) 4))
    )
    
)
