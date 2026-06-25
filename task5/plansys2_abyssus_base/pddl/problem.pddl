(define (problem t5)
    (:domain abyssus-base-t5)

    (:objects
        rov1 rov2 - rov
        s1 s2 s3 - sample
        cap1 cap2 - capsule
        wing_alpha wing_beta transfer_zone decompression_chamber bio_vault dock1 stabilizer1 - location
        c0 c1 c2 c3 - capacity_number
    )

    (:init
        (narrow_connected transfer_zone wing_alpha)
        (narrow_connected wing_alpha transfer_zone)
        (connected transfer_zone wing_beta)
        (connected wing_beta transfer_zone)
        (connected transfer_zone dock1)
        (connected dock1 transfer_zone)
        (connected transfer_zone decompression_chamber)
        (connected decompression_chamber transfer_zone)
        (connected decompression_chamber stabilizer1)
        (connected stabilizer1 decompression_chamber)
        (connected decompression_chamber bio_vault)
        (connected bio_vault decompression_chamber)
        (connected stabilizer1 bio_vault)
        (connected bio_vault stabilizer1)

        (is_bio_vault bio_vault)
        (is_docking_station dock1)
        (is_pressure_stabilizer stabilizer1)

        ;; -- ROVs --
        ;; rov 1
        (small_robot rov1)
        (at rov1 dock1)

        ;; rov 2
        (at rov2 dock1)

        ;; -- Discrete ROV capacity --
        (capacity_predecessor c0 c1)
        (capacity_predecessor c1 c2)
        (capacity_predecessor c2 c3)
        (capacity rov1 c1)
        (capacity rov2 c3)

        ;; -- Regular samples --
        ;; s1
        (at s1 wing_alpha)
        (regular_sample s1) ;; TODO: probably we can remove regular_sample at this point
        (stabilized s1)
        
        ;; s2
        (at s2 wing_beta)
        (regular_sample s2)
        (stabilized s2)

        ;; -- Pressure-sensitive samples --
        (at s3 wing_beta)
        (pressure_sensitive_sample s3)
        (unstabilized s3)

        ;; -- Capsules --
        (at cap1 dock1)
        (at cap2 dock1)
        (empty_capsule cap1)
        (empty_capsule cap2)
    )

    (:goal
        (and
            (forall (?s - sample)
                (and 
                    (stored ?s)
                    (stabilized ?s)
                )
            )
        )
    )
)
