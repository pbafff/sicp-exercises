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

#|t̶̶̶o̶̶̶ ̶a̶̶̶n̶̶̶s̶̶̶w̶̶̶e̶̶̶r̶̶̶ ̶t̶̶̶h̶̶̶e̶̶̶ ̶e̶̶̶x̶̶̶e̶̶̶r̶̶̶c̶̶̶i̶̶̶s̶̶̶e̶̶̶'̶s̶̶̶ ̶q̶̶̶u̶̶̶e̶̶̶s̶̶̶t̶̶̶i̶̶̶o̶̶̶n̶̶̶,̶ ̶i̶̶̶ ̶a̶̶̶s̶̶̶s̶̶̶u̶̶̶m̶̶̶e̶̶̶ ̶t̶̶̶h̶̶̶a̶̶̶t̶̶̶ ̶a̶̶̶ ̶n̶̶̶o̶̶̶r̶̶̶m̶̶̶a̶̶̶l̶̶̶-̶̶̶o̶̶̶r̶̶̶d̶̶̶e̶̶̶r̶̶̶ ̶i̶̶̶n̶̶̶t̶̶̶e̶̶̶r̶̶̶p̶̶̶r̶̶̶e̶̶̶t̶̶̶e̶̶̶r̶̶̶
 ̶w̶̶̶o̶̶̶u̶̶̶l̶̶̶d̶̶̶ ̶m̶̶̶e̶̶̶m̶̶̶o̶̶̶r̶̶̶y̶̶̶ ̶l̶̶̶e̶̶̶a̶̶̶k̶̶̶ ̶a̶̶̶s̶̶̶ ̶i̶̶̶t̶̶̶ ̶t̶̶̶r̶̶̶i̶̶̶e̶̶̶s̶̶̶ ̶e̶̶̶x̶̶̶p̶̶̶a̶̶̶n̶̶̶d̶̶̶i̶̶̶n̶̶̶g̶̶̶ ̶t̶̶̶h̶̶̶e̶̶̶ ̶p̶̶̶r̶̶̶e̶̶̶d̶̶̶i̶̶̶c̶̶̶a̶̶̶t̶̶̶e̶̶̶ ̶e̶̶̶x̶̶̶p̶̶̶r̶̶̶e̶̶̶s̶̶̶s̶̶̶i̶̶̶o̶̶̶n̶̶̶ ̶f̶̶̶o̶̶̶r̶̶̶e̶̶̶v̶̶̶e̶̶̶r̶̶̶,̶ ̶
w̶̶̶h̶̶̶i̶̶̶l̶̶̶e̶̶̶ ̶a̶̶̶n̶̶̶ ̶a̶̶̶p̶̶̶p̶̶̶l̶̶̶i̶̶̶c̶̶̶a̶̶̶t̶̶̶i̶̶̶v̶̶̶e̶̶̶-̶̶̶o̶̶̶r̶̶̶d̶̶̶e̶̶̶r̶̶̶ ̶i̶̶̶n̶̶̶t̶̶̶e̶̶̶r̶̶̶p̶̶̶r̶̶̶e̶̶̶t̶̶̶e̶̶̶r̶̶̶ ̶l̶̶̶o̶̶̶o̶̶̶p̶̶̶s̶̶̶ ̶s̶̶̶a̶̶̶n̶̶̶s̶̶̶ ̶m̶̶̶e̶̶̶m̶̶̶o̶̶̶r̶̶̶y̶̶̶ ̶l̶̶̶e̶̶̶a̶̶̶k̶̶̶.̶|#

;;turns out i didn't really understand normal-order