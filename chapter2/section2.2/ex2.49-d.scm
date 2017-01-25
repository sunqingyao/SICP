;;; Exercise 2.49-d
;;; ===============

(define wave (let ((v1 (make-vector 0.25 0.0))
                   (v2 (make-vector 0.35 0.5))
                   (v3 (make-vector 0.3 0.6))
                   (v4 (make-vector 0.15 0.4))
                   (v5 (make-vector 0.0 0.65))
                   (v6 (make-vector 0.0 0.85))
                   (v7 (make-vector 0.15 0.6))
                   (v8 (make-vector 0.3 0.65))
                   (v9 (make-vector 0.4 0.65))
                   (v10 (make-vector 0.35 0.85))
                   (v11 (make-vector 0.4 1.0))
                   (v12 (make-vector 0.6 1.0))
                   (v13 (make-vector 0.65 0.85))
                   (v14 (make-vector 0.6 0.65))
                   (v15 (make-vector 0.76 0.65))
                   (v16 (make-vector 1.0 0.15))
                   (v17 (make-vector 1.0 0.35))
                   (v18 (make-vector 0.6 0.45))
                   (v19 (make-vector 0.75 0.0))
                   (v20 (make-vector 0.6 0.0))
                   (v21 (make-vector 0.5 0.3))
                   (v22 (make-vector 0.4 0.0)))
               (segment->painter (list (make-segment v1 v2)
                                       (make-segment v2 v3)
                                       (make-segment v3 v4)
                                       (make-segment v4 v5)
                                       (make-segment v6 v7)
                                       (make-segment v7 v8)
                                       (make-segment v8 v9)
                                       (make-segment v9 v10)
                                       (make-segment v10 v11)
                                       (make-segment v12 v13)
                                       (make-segment v13 v14)
                                       (make-segment v14 v15)
                                       (make-segment v15 v16)
                                       (make-segment v17 v18)
                                       (make-segment v18 v19)
                                       (make-segment v20 v21)
                                       (make-segment v21 v22)))))

