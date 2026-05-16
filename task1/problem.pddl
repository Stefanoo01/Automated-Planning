(define (problem t1)
    (:domain abyssus-base)

    (:objects
        rov1 - rov

        s1 s2 s6 - sample
        s3 s4 s5 - pressure-sensitive

        cap1 cap2 cap3 - capsule

        wing_alpha wing_beta transfer_zone decompression_chamber bio_vault - location
        docking_station - docking-station
        pressure_stabilizer - pressure-stabilizer
    )

    (:init
        ;; Connections
        (connected transfer_zone wing_alpha)
        (connected wing_alpha transfer_zone)

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

        ;; Special locations
        (bio_vault bio_vault)

        ;; ROV initial state
        (at rov1 docking_station)
        (handempty rov1)

        ;; Regular samples
        (regular-sample s1)
        (regular-sample s2)
        (regular-sample s6)

        ;; Sample positions
        (at s1 wing_alpha)
        (at s2 wing_alpha)
        (at s3 wing_alpha)
        (at s4 wing_alpha)
        (at s5 wing_beta)
        (at s6 wing_beta)

        ;; Capsules
        (at cap1 wing_alpha)
        (at cap2 wing_alpha)
        (at cap3 wing_beta)

        (empty-capsule cap1)
        (empty-capsule cap2)
        (empty-capsule cap3)

        ;; Numeric values
        (= (battery-level rov1) 30)
        (= (total-cost) 0)
    )

    (:goal
        (and
            (forall (?s - sample)
                (stored ?s)
            )
        )
    )

    (:metric minimize (total-cost))
)