(define (problem t2)
    (:domain abyssus-base)

    (:objects
        rov1 rov2 - rov
        s1 - sample
        s3 - pressure-sensitive
        cap1 cap2 - capsule
        wing_alpha wing_beta transfer_zone decompression_chamber bio_vault - location
        docking_station - docking-station
        pressure_stabilizer - pressure-stabilizer
    )

    (:init
        (narrow-connected transfer_zone wing_alpha)
        (narrow-connected wing_alpha transfer_zone)
        (connected transfer_zone wing_beta)
        (connected wing_beta transfer_zone)
        (connected transfer_zone docking_station)
        (connected docking_station transfer_zone)
        (connected transfer_zone decompression_chamber)
        (connected decompression_chamber transfer_zone)
        (connected decompression_chamber pressure_stabilizer)
        (connected pressure_stabilizer decompression_chamber)
        (connected decompression_chamber bio_vault)
        (connected bio_vault decompression_chamber)
        (connected pressure_stabilizer bio_vault)
        (connected bio_vault pressure_stabilizer)
        (bio-vault bio_vault)

        (at rov1 docking_station)
        (at rov2 docking_station)
        (small-robot rov1)
        (regular-sample s1)
        (at s1 wing_alpha)
        (at s3 wing_alpha)
        (at cap1 docking_station)
        (at cap2 docking_station)
        (empty-capsule cap1)
        (empty-capsule cap2)

        (= (battery-level rov1) 30)
        (= (battery-level rov2) 30)
        (= (capacity rov1) 1)
        (= (capacity rov2) 3)
        (= (total-cost) 0)
    )

    (:goal
        (and
            (forall (?s - sample)
                (stored ?s)
            )

            (forall (?s - pressure-sensitive)
                (stabilized ?s)
            )
        )
    )

    (:metric minimize (total-cost))
)