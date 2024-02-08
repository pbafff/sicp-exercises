#lang sicp

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)

#|
(if (= 4 0)
    5
    (inc (+ (dec 4) 5)))

(if (#f)
    5
    (inc (+ 3 5)))

(if (#f)
    5
    (inc (if (= 3 0)
             5
             (inc (+ (dec 3) 5)))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (+ 2 5)))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (= 2 0)
                      5
                      (inc (+ (dec 2) 5)))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (+ 1 5)))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (if (= 1 0)
                               5
                               (inc (+ (dec 1) 5)))))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (if (#f)
                               5
                               (inc (+ 0 5)))))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (if (#f)
                               5
                               (inc (if (= 0 0)
                                        5
                                        (inc (+ (dec 0) 5)))))))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (if (#f)
                               5
                               (inc (if (#t)
                                        5
                                        (inc (+ (dec 0) 5)))))))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (if (#f)
                               5
                               (inc 5))))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc (if (#f)
                               5
                               6)))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc (if (#f)
                      5
                      (inc 6))))))

(if (#f)
    5
    (inc (if (#f)
             5
             (inc 7))))

(if (#f)
    5
    (inc (if (#f)
             5
             8)))

(if (#f)
    5
    (inc 8))

(if (#f)
    5
    9)

9
|#

(define (+. a b)
  (if (= a 0)
      b
      (+. (dec a) (inc b))))

(+. 4 5)

#|
(if (= 4 0)
    5
    (+. (dec 4) (inc 5))))

(if (#f)
    5
    (+. 3 6)))

(if (#f)
    5
    (if (= 3 0)
      6
      (+. (dec 3) (inc 6))))))

(if (#f)
    5
    (if (#f)
      6
      (+. 2 7)))))

(if (#f)
    5
    (if (#f)
      6
      (if (= 2 0)
        7
        (+. (dec 2) (inc 7))))))))

(if (#f)
    5
    (if (#f)
      6
      (if (#f)
        7
        (+. 1 8)))))))

(if (#f)
    5
    (if (#f)
      6
      (if (#f)
        7
        (if (= 1 0)
          8
          (+. (dec 1) (inc 8))))))))))

(if (#f)
    5
    (if (#f)
      6
      (if (#f)
        7
        (if (#f)
          8
          (+. 0 9)))))))))

(if (#f)
    5
    (if (#f)
      6
      (if (#f)
        7
        (if (#f)
          8
          (if (= 0 0)
            9
            (+. (dec 0) (inc 9))))))))))))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* counter product)
               (+ counter 1)
               max-count)))

(define (fact-iter 1 1 6)
  (if (> 1 6)
    1
    (fact-iter (* 1 1)
               (+ 1 1)
               6)))

(define (fact-iter 1 1 6)
  (if (> 1 6)
    1
    (fact-iter 1
               2
               6)))

(define (fact-iter 1 1 6)
  (if (> 1 6)
    1
    (if (> 2 6)
      1
      (fact-iter (* 2 1)
                 (+ 2 1)
                 6))))

(define (fact-iter 1 1 6)
  (if (> 1 6)
    1
    (if (> 2 6)
      1
      (fact-iter 2
                 3
                 6))))

(define (fact-iter 1 1 6)
  (if (> 1 6)
    1
    (if (> 2 6)
      1
      (if (> 3 6)
        2
        (fact-iter (* 3 2)
                   (+ 3 1)
                   6)))))

(define (fact-iter 1 1 6)
  (if (> 1 6)
    1
    (if (> 2 6)
      1
      (if (> 3 6)
        2
        (fact-iter 6
                   4
                   6)))))
|#