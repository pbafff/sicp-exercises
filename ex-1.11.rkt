#lang sicp

(define (f n)
  (cond ((< n 3) n)
        (else (+    (f (- n 1))
                 (* (f (- n 2)) 2)
                 (* (f (- n 3)) 3)))))
(f 7)

(define (f-iter a b c count)
  (if (= count 0)
      c
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

#;
(define (f n)
  (f-iter 2 1 0 n))

(f-iter 2 1 0 7)
