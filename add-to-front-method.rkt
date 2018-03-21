#lang racket

(define (add-to-front-of-123 x)
  (cons x '(1 2 3))
  )

;call the function
(add-to-front-of-123 'a)
(add-to-front-of-123 'b)
(add-to-front-of-123 0)
(add-to-front-of-123 'abc)
(add-to-front-of-123 '(a b c))



