(define (fast-multi-recursive a b)
  (define (even? num)
    (= (remainder num 2) 0))
  (define (double num)
    (* num 2))
  (define (half num)
    (/ num 2))
  (cond ((= b 0) 0)
        ((even? b) (double (fast-multi-recursive a (half b))))
        (else (+ (fast-multi-recursive a (- b 1)) a))))

(display "\n")
(display (fast-multi-recursive 42 11))
(display "\n")
(display (fast-multi-recursive 11 42))
