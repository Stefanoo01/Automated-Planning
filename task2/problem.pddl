(define (problem t1)
    (:domain abyssus-base)
    (:objects
        rov1 rov2 rov3 rov4 - rov
        s1 s2 s6 - sample
        s3 s4 s5 - pressure-sensitive
        wing-alpha wing-beta transfer-zone decompression-chamber bio-vault - location
        docking_station - docking-station
        pressure_stabilizer - pressure-stabilizer
    )
    (:init
        (narrow-connected transfer-zone wing-alpha)
        (narrow-connected wing-alpha transfer-zone)
        (connected transfer-zone wing-beta)
        (connected wing-beta transfer-zone)
        (connected transfer-zone docking_station)
        (connected docking_station transfer-zone)
        (connected transfer-zone decompression-chamber)
        (connected decompression-chamber transfer-zone)
        (connected decompression-chamber pressure_stabilizer)
        (connected pressure_stabilizer decompression-chamber)
        (connected decompression-chamber bio-vault)
        (connected bio-vault decompression-chamber)
        (connected pressure_stabilizer bio-vault)
        (connected bio-vault pressure_stabilizer)

        (at rov1 docking_station)
        (at rov2 docking_station)
        (at rov3 docking_station)
        (at rov4 docking_station)
        (small-robot rov1)
        (small-robot rov3)
        (small-robot rov4)
        (at s1 wing-alpha)
        (at s2 wing-alpha)
        (at s3 wing-alpha)
        (at s4 wing-alpha) 
        (at s5 wing-beta)
        (at s6 wing-beta)

        (= (battery-level rov1) 20)
        (= (battery-level rov2) 20)
        (= (capacity rov1) 1)
        (= (capacity rov2) 3)
        (= (capacity rov3) 1)
        (= (capacity rov4) 1)
        (= (total-cost) 0)
    )
    (:goal
        (and
            (forall (?s - sample)
                (at ?s bio-vault)
            )
            (forall (?s - pressure-sensitive)
                (stabilized ?s)
            )
        )
    )
    (:metric minimize (total-cost))
)
