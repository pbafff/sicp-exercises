#lang sicp

#| if z is bigger than the bigger of x and y
then they are the two biggest. if z is smaller then
z must be compared against the smaller of x and y
[(< z (if (< x y) x y)) (+ (square x) (square y))]|#

(define (square x) (* x x))
(define (the-greater-of x y) (if (>= x y) x y))

(define (do-thing x y z)
  (cond
    [(>= z (the-greater-of x y)) (+ (square z) (square (the-greater-of x y)))]
    [(>= y (the-greater-of x z)) (+ (square y) (square (the-greater-of x z)))]
    [(>= x (the-greater-of y z)) (+ (square x) (square (the-greater-of y z)))]))

(do-thing 1 0 0)