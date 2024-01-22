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

(define (sqrt-iter guess x)    ;;provides iteration
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 1)

#;
(sqrt x)

#;
(sqrt-iter 1.0 x)

#|
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|#

;;combination with two compound operands and one primitive
#;
(new-if (good-enough? 1.0 x)
          1.0
          (sqrt-iter (improve 1.0 x)  ;;since new-if is a procedure, the predicate,
                     x))              ;;then-clause, and else-clause, all being 
#| ᗑ                                  ;;operands in a combination, will have to be
   |                                  ;;expanded in order to evaulate the combination.
   ┞——————— expand new-if operator first
|#

#;
(cond ((good-enough? 1.0 x) 1.0)
      (else (sqrt-iter (improve 1.0 x)
                     x)))
#|               ᗑ
                 ┞——————— expand predicate next
|#

#;
(cond (((< (abs (- (square 1.0) x )) 0.001) 1.0 x) 1.0)
      (else (sqrt-iter (improve 1.0 x)
                     x)))

#;
(cond ((good-enough? guess x)       ;;<-predicate
       guess                        ;;<-then-clause
       (sqrt-iter (improve guess x) ;;<-else-clause
                  x)))

#;
(cond ((good-enough? guess x)         ;;<-predicate
       guess                          ;;<-then-clause
       (new-if (good-enough? guess x) ;;<-else-clause
               guess
               (sqrt-iter (improve guess x)
                          x))))

#;
(cond ((good-enough? guess x)         ;;<-predicate
       guess                          ;;<-then-clause
       (new-if (good-enough? guess x) ;;<-else-clause
               guess
               (new-if (good-enough? guess x)
                       guess
                       (sqrt-iter (improve guess x)
                                  x)))))

#;
(cond ((good-enough? guess x)         ;;<-predicate
       guess                          ;;<-then-clause
       (new-if (good-enough? guess x) ;;<-else-clause
               guess
               (new-if (good-enough? guess x)
                       guess
                       (♾️)))))       ;;<-memory leak


