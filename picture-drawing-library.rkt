#lang slideshow

(define cir (circle 10))
(define rec (rectangle 20 20))
(hc-append cir rec)
(hc-append 20 cir rec cir)