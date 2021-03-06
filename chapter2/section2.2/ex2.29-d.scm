;;; Exercise 2.29-d
;;; ===============

(define (make-mobile left right)
  (cons left right))
(define (make-branch length structure)
  (cons length structure))
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cdr mobile))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cdr branch))

;; Thanks to the abstraction barrier, all I need to change is the imple-
;; mentation of these selectors.

(define (total-weight mobile)
  (let ((left (branch-structure (left-branch mobile)))
        (right (branch-structure (right-branch mobile))))
    (+ (if (list? left)
         (total-weight left)
         left)
       (if (list? right)
         (total-weight right)
         right))))

(define (balanced? mobile)
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (let ((l-length (branch-length left))
          (r-length (branch-length right))
          (l-structure (branch-structure left))
          (r-structure (branch-structure right)))
      (= (* l-length (if (list? l-structure)
                       (total-weight l-structure)
                       l-structure))
         (* r-length (if (list? r-structure)
                       (total-weight r-structure)
                       r-structure))))))

(define left (make-branch 1 2))
(define right (make-branch 3 4))
(define mobile (make-mobile left right))
(balanced? mobile)
;Value: #f

(define left (make-branch 1 8))
(define right (make-branch 2 4))
(define mobile (make-mobile left right))
(balanced? mobile)
;Value: #t

