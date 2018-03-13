#lang slideshow

(define (six p r o)
  (define three-p (hc-append p r o))
  (vc-append three-p three-p three-p))

(six (circle 10)(rectangle 20 20)(circle 20))