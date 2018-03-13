#lang racket
(sqrt 49)
(println (+ 5 (sqrt 36) ))
(println ( + 3 4 ))
(println "Hello World ")
(substring "the sun above the hills" 4 7 )

(define (extract str)
(substring str 4 7)
)

(extract "lala land")