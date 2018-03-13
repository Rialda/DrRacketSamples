#lang slideshow

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(four (circle 10))