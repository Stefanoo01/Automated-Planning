(define (problem t4)
    (:domain abyssus-base-t4)

    (:objects
        rov1 rov2 - rov
        s1 - sample
        s3 - pressure-sensitive
        cap1 cap2 - capsule
        wing-alpha wing-beta transfer-zone decompression-chamber bio-vault dock1 stabilizer1 - location
    )

    (:init
        (narrow-connected transfer-zone wing-alpha)
        (narrow-connected wing-alpha transfer-zone)
        (connected transfer-zone wing-beta)
        (connected wing-beta transfer-zone)
        (connected transfer-zone dock1)
        (connected dock1 transfer-zone)
        (connected transfer-zone decompression-chamber)
        (connected decompression-chamber transfer-zone)
        (connected decompression-chamber stabilizer1)
        (connected stabilizer1 decompression-chamber)
        (connected decompression-chamber bio-vault)
        (connected bio-vault decompression-chamber)
        (connected stabilizer1 bio-vault)
        (connected bio-vault stabilizer1)

        (is-bio-vault bio-vault)
        (is-docking-station dock1)
        (is-pressure-stabilizer stabilizer1)

        (at rov1 dock1)
        (at rov2 dock1)
        (small-robot rov1)
        (at s1 wing-alpha)
        (at s3 wing-alpha)
        (at cap1 dock1)
        (at cap2 dock1)
        (empty-capsule cap1)
        (empty-capsule cap2)

        ;; Regular samples
        (regular-sample s1)
        (unstabilized s3)

        (= (battery-level rov1) 30)
        (= (battery-level rov2) 30)
        (= (capacity rov1) 1)
        (= (capacity rov2) 3)
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

    ; (:metric minimize (total-cost))
)