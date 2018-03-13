#lang slideshow

(define (four p r)
  (define two-p (hc-append p r))
  (vc-append two-p two-p))

(four (circle 10)(rectangle 20 20))