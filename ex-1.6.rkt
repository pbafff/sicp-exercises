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
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 1)

;;retrieve the body
#;
(sqrt x)

;;replace the formal parameter by the argument
#;
(sqrt 1)

;;retrieve the body 
#;
(sqrt-iter 1.0 x)

;;replace the formal parameter by the argument 
#;
(sqrt-iter 1.0 1)

;;retrieve the body
#;
(new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x))

#|
  replace the formal parameters by the arguments.
  we now have a combination with an operator to be evaulated, two compound operands,
  and one primitive operand:
|#
#;
(new-if (good-enough? 1.0 1)         ;;since new-if is a procedure, the predicate,
          1.0                        ;;then-clause, and else-clause, all being
          (sqrt-iter (improve 1.0 1) ;;operands in a combination, will have to be
                     1))             ;;expanded in order to evaulate the combination. 

;;retrieve the body
#;
(cond (predicate then-clause)
        (else else-clause))

#|
  to replace the formal parameters in the body of new-if, we must evaluate the
  compound arguments passed to it
|#
#;
(cond (#t 1.0)
      (else (new-if (good-enough? 1.0 1)
                    1.0
                    (sqrt-iter (improve 1.0 1)
                               1))))
            ;;retrieve the body   

#;
(cond (#t 1.0)
      (else (cond (predicate then-clause)
                  (else else-clause))))


            ;;evaluate the compound arguments
#;
(cond (#t 1.0)
      (else (cond (#t 1.0)
                  (else (new-if (good-enough? 1.0 1)
                                1.0
                                (sqrt-iter (improve 1.0 1)
                                           1))))))

;;this reduction of expressions never ends, hence the memory leak