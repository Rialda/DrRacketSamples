#lang racket

;list-eating game

(define (my-length a-list)
  (if (empty? a-list)
      0
      (add1 (my-length (rest a-list)))))

#||
 take the items from the front of a list and send the rest
of the list back to the same function
until the list is empty
- good to check if the list is empty
||#

;call
(my-length '(list with some stuff)) ; outputs the number of items in a list, here 4 strings
(my-length '(42)) ; add 1 integer to the list







