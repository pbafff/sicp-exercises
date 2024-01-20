#lang sicp

#|if z is greater than or equal to the greater of x and y
then the two biggest numbers are z, and x and/or y. this is applied
to all combinations of x, y, and z|#

(define (square x) (* x x))
(define (the-greater-of x y) (if (>= x y) x y))

(define (do-thing x y z)
  (cond
    [(>= z (the-greater-of x y)) (+ (square z) (square (the-greater-of x y)))]
    [(>= y (the-greater-of x z)) (+ (square y) (square (the-greater-of x z)))]
    [(>= x (the-greater-of y z)) (+ (square x) (square (the-greater-of y z)))]))

(do-thing 6 3 9)