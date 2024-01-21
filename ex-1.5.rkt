#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
       0
       y))

#;(test 0 (p))
;; infinite loop

(define (prints-then-returns-0)
  (display 0)
  0)

#;(test prints-then-returns-0 (p))
#|loops without printing first
made the mistake of not doing (prints-then-0) so prints-then-0 is never
evalutaed|# 

(test (prints-then-returns-0) (p))
;;this prints 0 first then loops as it tries to evalutate (p)

#|to answer the exercise's question, i assume that a normal-order interpreter
would memory leak as it tries expanding the predicate expression forever,
while an applicative-order interpreter loops sans memory leak.|#