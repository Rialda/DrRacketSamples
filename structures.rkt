#lang racket

#||
 STRUCTURES are basically packages of data
 similar to lists
 lists are good for combination of arbitrary # of items
 structs are good for combining fixed # of items
||#

; first create a structure
(struct student (name id# dorm))

;now create an instance of this structure
(define john (student 'John 221 'IUSDorm))

;reach john's name
(student-name john)

;reach john's id
(student-id# john)

;reach john's dorm
(student-dorm john)

; does it exist?
"Does it exist?"
(struct person (x y))
(person 1 2)
(person? 3)
(person? 2)
(person? (person 1 2))
(person? (person 3 4))


; copy it
(println "Copy")
(define p1 (person 1 2))
(define p2 (struct-copy person p1[x 3]))
(list (person-x p1) (person-y p1))
(list (person-x p2) (person-y p2))


#|| Structures are by default opaque, that is - an instance
 of a structure type prints in a way that does not show any
information about the field's values. OPAQUE (by default) provides
more encapsulation guarantees

An instance of a TRANSPARENT structure prints like a call to the construcor so that
it shows the structure field values
it also allows operations like: struct? and struct-info to be used
in it's instances
||#

(println "Transparent")
(struct window (width height) #:transparent)
(equal? (window 1 2) (window 1 2))

(struct door (width height))
(define d1 (door 1 2))
(println "Equal")
(equal? d1 d1)
(equal? d1 (door 1 2)) ; equal? identifies to mere instances of struct

