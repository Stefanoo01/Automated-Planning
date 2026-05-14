(define (problem t1)
    (:domain abyssus-base)

    (:objects
        rov1 - rov

        s1 s2 s6 - sample
        s3 s4 s5 - pressure-sensitive

        cap1 cap2 cap3 - capsule

        wing-alpha wing-beta transfer-zone decompression-chamber bio-vault - location
        docking_station - docking-station
        pressure_stabilizer - pressure-stabilizer
    )

    (:init
        ;; Connections
        (connected transfer-zone wing-alpha)
        (connected wing-alpha transfer-zone)

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

        ;; Special locations
        (bio-vault bio-vault)

        ;; ROV initial state
        (at rov1 docking_station)
        (handempty rov1)

        ;; Regular samples
        (regular-sample s1)
        (regular-sample s2)
        (regular-sample s6)

        ;; Sample positions
        (at s1 wing-alpha)
        (at s2 wing-alpha)
        (at s3 wing-alpha)
        (at s4 wing-alpha)
        (at s5 wing-beta)
        (at s6 wing-beta)

        ;; Capsules
        (at cap1 wing-alpha)
        (at cap2 wing-alpha)
        (at cap3 wing-beta)

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