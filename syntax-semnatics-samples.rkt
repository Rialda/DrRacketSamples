#lang racket

; simple function for area of a square
(define (square n)
  (* n n))

; boolean

(zero? 1)
(zero? (sub1 1)) ; sub1 substracts 1, in this case result is 1-1 = 0

; use data type symbol=? to check if two symbols are identical
; take care because every symbol needs to start with '
(symbol=? 'foo 'Foo)

; calculate 19th power of 19
(expt 19 19)

;calculate square root
(sqrt 36)

;divide two numbers
(/ 9 3)


#|| STRINGS ||#

; concatinate two or n strings
(string-append "ice" "cream")
(string-append "sunny" " " "day" " " "today")






