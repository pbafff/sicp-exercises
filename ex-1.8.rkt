#lang sicp

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (/ (abs (- guess x)) guess) 0.0000000001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* guess 2)) 3))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 27)
(cbrt 28)
(cbrt 1111111111111111111)
(cbrt 0.0000000000000000001)