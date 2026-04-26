(define (domain abyssus-base)
    (:requirements :strips :typing :negative-preconditions :equality :disjunctive-preconditions :quantified-preconditions :conditional-effects :fluents)
    (:types
        locatable location - object
        rov sample - locatable
        pressure-sensitive - sample
        pressure-stabilizer docking-station - location
    )

    (:predicates
        (at ?x - locatable ?l - location)
        (handempty ?r - rov)
        (carrying ?r - rov ?s - sample)
        (connected ?from - location ?to - location)
        (stabilized ?s - sample)
    )

    (:functions
        (battery-level ?r - rov)
        (total-cost)
    )

    (:action move
        :parameters (?r - rov ?from - location ?to - location)
        :precondition (and (at ?r ?from) (connected ?from ?to) (not (= ?from ?to)) (>= (battery-level ?r) 2))
        :effect (and (at ?r ?to) (not (at ?r ?from)) (decrease (battery-level ?r) 2) (increase (total-cost) 2))
    )

    (:action pickup
        :parameters (?r - rov ?s - sample ?l - location)
        :precondition (and (at ?r ?l) (at ?s ?l) (handempty ?r) (>= (battery-level ?r) 1))
        :effect (and (not (handempty ?r)) (carrying ?r ?s) (not (at ?s ?l)) (decrease (battery-level ?r) 1) (increase (total-cost) 1))
    )

    (:action drop
        :parameters (?r - rov ?s - sample ?l - location)
        :precondition (and (at ?r ?l) (carrying ?r ?s) (>= (battery-level ?r) 1))
        :effect (and (not (carrying ?r ?s)) (at ?s ?l) (handempty ?r) (decrease (battery-level ?r) 1) (increase (total-cost) 1))
    )

    (:action stabilize
        :parameters (?l - pressure-stabilizer)
        :precondition (and (exists (?r - rov ?adj - location) (and (at ?r ?adj) (connected ?adj ?l))) (exists (?s - pressure-sensitive) (and (at ?s ?l) (not (stabilized ?s)))))
        :effect (and 
            (forall (?s - pressure-sensitive) 
                (when (at ?s ?l) (stabilized ?s))
            )
            (increase (total-cost) 3)
        )
    )

    (:action recharge
        :parameters (?r - rov ?l - docking-station)
        :precondition (and (at ?r ?l) (<= (battery-level ?r) 20))
        :effect (and (assign (battery-level ?r) 20) (increase (total-cost) 4))
    )
    
)
