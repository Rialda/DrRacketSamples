#lang racket

#|| LISTS ||#

; a simple list
(list 1 2 3)

; define variables
(define a 3)
(define b 4)
(define c 5)

; make a list of variables
(list a b c)

; also a linked list
(cons 1 2)
(cons 1 (cons 2 (cons 3 empty))) ;this is a chain - cons 3 does not point anywhere

; giving the list a name cell
(define cell (cons 'a 'b))
; call (car cell) which extracts the left part of list
; call (cdr cell) which extracts the right part of the list

; getting the first out of the list
(list 'strawberry 'blueberry 'raspberry)
(first (cons 'strawberry (cons 'blueberry (cons 'raspbery empty))))

; extracting others from the list
(rest (list 'strawberry 'blueberry 'raspberry))

(first (rest (list 'strawberry 'blueberry 'raspberry))) ; extract the second


#|| List inside of a list! - nested lists ||#

(list 'cat (list 'milk 'mouse) 'dog)
