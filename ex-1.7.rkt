#lang sicp

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x )) 0.001))

#;(good-enough? 1.0 2)

 (- (square 1.0) 0.00000000000000001)
