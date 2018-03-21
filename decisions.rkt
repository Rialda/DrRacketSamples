#lang racket

(print "Is 42 zero?")
(zero? 42) ;is 42 zero?

(print "Is 0 zero?")
(zero? 0)  ;is 0 zero?

(print "Is a identical to b?")
(symbol=? 'a 'b) ; are a and b equal?


(println "What is student's name?")
(struct student (name id# dorm) #:transparent)
(define freshman (student 'Ahmed 1122 'IUS))
(student-name freshman)

(println "Questions about student's existence")

(student? 'a)
(student? freshman)
(student? (student 1 2 3))
(student? "I am a student")
; student function takes one arg.
;If the value is an instance of a struct it returns #t, else #f


#|| Other comparisons ||#

(print "Is a a number? ")
(number? 'a)

(print "Is Sunny day a string? ")
(string? "Sunny day!")

(print "Is a a symbol? ")
(symbol? 'a)

(print "Is  false a boolean ")
(boolean? "false")

(print "Is  f a boolean ")
(boolean? 'f)

(print "Is  #f a boolean ")
(boolean? '#f)

(print "Are 1 and 2 equal? ")
(= 1 2)

(print "Is 6 the square root of 36? ")
(= (sqrt 36) 6)