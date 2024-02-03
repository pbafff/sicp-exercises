#lang sicp

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x )) 0.001))

;;needs to fail to determine that the difference between x and guess^2 is less than 0.001

(- 1 (+ 1000000000000000 1))

(- 1 (+ 1000000000000000 2))

(- 1 (+ 1000000000000000 3))

(< (abs (- 1.0 (+ 1 0.00001))) 0.001)

(- 1.0 (+ 1000000000000000 2))

(- 1.0 (+ 1000000000000000 3))

;;answer does not lie in this difference
;;perhaps i need to let go of keeping guess at 1.0
;;can * fail to square a number such that the produced value is more than 0.001 away from being correct
;;if x is big or small enough then maybe, when squared, the resu
;;take a number, sqrt it, square it back, take difference from original number, is it off by more than 0.001
;;start with √x

(< (abs (- (* 0.000005 0.000005) 0.000005)) 0.001)

#;(define (test x)
  (< (abs (- (* x x) x)) 0.001))

;;try solving next part and use that to answer this part?

(< (abs (- 1000000000000000000000000000000000000000000000000000000 (+ 0.1  1000000000000000000000000000000000000000000000000000000))) 0.001)

(define (test x diff)
  (display (abs (- x (+ x diff))))
  (< (abs (- x (+ x diff))) 0.001))

(test 0.00000000000000000000000000000000000000000000000000000000000000000000000000000001 0.0001)

(test 10000 0.0001)

(test 1000 0.0001)

(test 100 0.0001)

(test 10 0.0001)

(test 1 0.0001)

(test 0 0.0001)