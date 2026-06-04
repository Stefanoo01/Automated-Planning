(define (problem t1)
    (:domain abyssus-base)

    (:objects
        rov1 - rov

        s1 s2 - sample
        s3 s4 - pressure-sensitive

        cap1 - capsule

        wing-alpha wing-beta transfer-zone decompression-chamber biovault1 dock1 stabilizer1 - location
    )

    (:init
        ;; Connections
        (connected transfer-zone wing-alpha)
        (connected wing-alpha transfer-zone)

        (connected transfer-zone wing-beta)
        (connected wing-beta transfer-zone)

        (connected transfer-zone dock1)
        (connected dock1 transfer-zone)

        (connected transfer-zone decompression-chamber)
        (connected decompression-chamber transfer-zone)

        (connected decompression-chamber stabilizer1)
        (connected stabilizer1 decompression-chamber)

        (connected stabilizer1 biovault1)
        (connected biovault1 stabilizer1)
        
        (connected decompression-chamber biovault1)
        (connected biovault1 decompression-chamber)

        (is-docking-station dock1)
        (is-pressure-stabilizer stabilizer1)


        ;; Special locations
        (bio-vault biovault1)

        ;; ROV initial state
        (at rov1 dock1)
        (handempty rov1)

        ;; Regular samples
        (regular-sample s1)
        (regular-sample s2)
        (unstabilized s3)
        (unstabilized s4)

        ;; Sample positions
        (at s1 wing-alpha)
        (at s2 wing-alpha)
        (at s3 wing-alpha)
        (at s4 wing-alpha)

        ;; Capsules
        (at cap1 wing-alpha)

        (empty-capsule cap1)

        ;; Numeric values
        ;(= (battery-level rov1) 30)
        ; (= (total-cost) 0)
    )

    (:goal
        (and
            (stored s1)
            (stored s2)
            (stored s3)
            (stored s4)
        )
    )

    ; (:metric minimize (total-cost))
)