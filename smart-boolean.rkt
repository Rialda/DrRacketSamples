#lang racket

(if (member 4 (list 3 2 4 1)) '4-is-in 'not-in)
;returns the tail of the list! 
(member 1 '(3 4 2 1))
(member 1 '(3 4 1 5))
(member 1 '(3 1 4 5))
(member 1 '(1 3 4 5))

;another example
(define tasks '(milk eggs flour sugar))
(member 'eggs tasks)
