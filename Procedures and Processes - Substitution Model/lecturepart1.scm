#lang scheme

(define (sos x y)
  (+ (sq x) (sq y)))
(define (sq x)
  (* x x))

(sos 3 4)

; => 25

; How does this work? The substitution model will be accurate
; for the coming days.

; Kinds of expressions:
; Numbers
; Symbols
; Lambda expressions (we worry about them later)
; Definitions (these too)
; Conditionals (and these)
; Combinations

;         Substitution Rule
;
; To evalate an application
; Evaluate the operator to get procedures
; Evaluate the operands to get arguments
; Apply the procedure to the arguments
;  Copy the body of the procedure
;  substituting the argument supplied
;  for the formal parameters of the
;  procedure
; Evaluate the resulting new body.

(sos 3 4)
; Substitute 3 and 4 for x and y in sum of squares
; (+ (sq 3) (sq 4))   <= we are not going to open up + and *
; (+ (sq 3) (* 4 4))     

; "The key to understand complicated things
;  is to know what not to look at." - Gerald Jay Sussman

; (+ (sq 3) 16))
; (+ (* 3 3) 16))
; (+ 9 16)

; The order is to some extend arbitrary. There are some reasons
; to pick a certain order which we'll come to later.

; (IF <predicate> <consequent> <alternative>)
; It is important to get names for part of expressions.
; If you have the name of the spell you have power over it.

; To evaluate an IF expression
;  Evaluate the predicate expression
;  if it yields TRUE
;    evaluate the consequent expression
;  otherwise
;    evaluate the alternative expression

; (define (+ x y)
;   (if (= x 0)
;      y
;      (+ (-1+ x) (1+ y))))

; (+ 3 4)
; (if (=3 0) 4 (+ (-1+ 3) (1+ 4)))
; (+ (-1+ 3) (1+ 4))
; (+ (-1+ 3) 5)
; (+ 2 5)
; (if (= 2 0) 5 (+ (-1+ 2) (1+ 5)))
; (+ (-1+ 2) (1+ 5))
; (...)
; (+1 6)
; (...)
; (+ 0 7)
; 7

; "+1 and -1+ are primitives operations." Sussman will introduce
; more and more primitive operations. (Decrementor/incrementor.)