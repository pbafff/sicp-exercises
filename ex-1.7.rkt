#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x )) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)      ;;provides change
  (average guess (/ x guess)))

(define (newline) (display "\n"))

(define (sqrt-iter guess x)
  (display "GUESS: ")
  (display guess) ;;provides iteration
  (display " off by: ")
  (display (- (square guess) x))
  (newline)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;(sqrt 1111111111111111111)

(- 1111111111111111111 1.0) ;;gives 1111111111111111200 instead of 1111111111111111110
(improve 1.0 1111111111111111111)
(good-enough? 1054092553.3894598 1111111111111111111)
(abs (- (square 1054092553.3894598) 1111111111111111111))
(square 1054092553.3894598)
(/ 1111111111111111111 1054092553.3894598)
(+ 1054092553.3894597 1054092553.3894598)
(/ 2108185106.7789197 2)