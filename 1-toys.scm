; Chapter 1: Toys

; (one two (three four)) == collection of S-expressions and list, 3 S-expressions
; one => single S-expression, all atoms are S-expressions

; THE LAW OF "car"
;  The primitive "car" is defined only for non-empty lists

(car '(1 2 3 4))
;Value: 1

; car receives a non-empty list
(car '())
;Error

; THE LAW OF "cdr"
;  The primitive "cdr" is defined only for non-empty lists. The "cdr"
;  of any nonempty list is always another list.

(cdr '(1 2 3 '(4)))
;Value: (2 3 '(4))

; cdr receives a non-empty list
(cdr '())
;Error

; THE LAW OF "cons"
;  The primitive "cons" takes two arguments. The second argument to "cons"
;  must be a list. The result is a list.

; cons takes two arguments: the first one is any S-expression; the second one is any list.
(let ((a 4) (b '(1 2 3)))
  (cons a b))
;Value: (4 1 2 3) ; adds to the front of the list

(let ((a '(1 2 3)) (b '(4 5)))
  (cons a b))
;Value: ((1 2 3) 4 5)
