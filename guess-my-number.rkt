#lang racket


#|| the Guessing game ||#
; determine or set the upper and lower limits of the player's number
; guess a number halfway between those two numbers
; if the player says the number is smaller, lower the upper limit
; if the player says the number is bigger, raise the lower limit
; this is binary search: cutting the number of possibilities in half in each step

#|| the main function ||#

; n and m are the lower and upper bounds
(define (start n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))

#|| guessing game function ||#

(define lower 1)
(define upper 100)

(define (guess)
  (quotient (+ lower upper)2))
; call (guess)in terminal

(define (return-five)
  5)
; call (return-five) in terminal

(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))
; the purpose of set! is to evaluate the expression and set
; the variable to the resulting value

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))
;call the bigger function
; with this the player is saying that her number is bigger than the previous guess
;the smallest it can now be is one more than the previous game


#|| Running the game ||#
; in terminal call (start n m)
; if your imagined number is smaller than the output, call (smaller)
; else call (bigger)
; continue calling smaller and bigger until you reach the imagined number


