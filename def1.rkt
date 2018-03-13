#lang racket
(require xrepl)

(define (extract str)
(substring str 4 7)
)

(extract "another sunny day")