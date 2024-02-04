#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x )) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)      
  (average guess (/ x guess)))

(define (newline) (display "\n"))

(define (sqrt-iter guess x)
  (display "GUESS: ")
  (display guess)
  (display " GUESS^2 off by: ")
  (display (- (square guess) x))
  (newline)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

#;
(sqrt 1111111111111111111)
;;this is an infinite loop. guess eventually reaches a value that should trigger good-enough? to return #t (1054092553.3894745), but #f is returned so guess is refined one more time (1054092553.3894598), after which it ceases to change and sqrt-iter calls itself infinitely.

(square 1054092553.3894745)
;;returns 1111111111111142100.0, much too large to get a #t out of good-enough?

(square 1054092553.3894598)
;;returns 1111111111111111300.0, also too large

;;both of these calculations are incorrect but it doesn't matter; even if they weren't, squaring them would still produce values too big

(improve 1054092553.3894598 1111111111111111111)
;;returns the same guess. being limited to just 7 decimal places prevents improve from producing a guess that can be squared to get a number close enough to 1111111111111111111. so, we get suck in an infinite loop.

(sqrt 0.0000000000000000001)
;;returns 0.03125 which is obviously wrong

(square 0.03125)