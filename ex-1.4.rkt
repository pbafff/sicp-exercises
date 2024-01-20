#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b -2 -3)

#|the body of the procedure a-plus-abs-b is a combination –– the denoted application
of an operator (a procedure or other compound expression) to its operands (arguments).
here, the operand is a compound expression, an if statement, returning either
the + or - procedures which will be applied to the operands a and b.|#