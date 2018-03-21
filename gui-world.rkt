#lang racket
(require 2htdp/universe 2htdp/image)


(define WIDTH 400)
(define HEIGHT 500)

;counts the state it passes and returns to big-bang,
;results in speed 
(define (add-x-to-state current-state)
  (+ current-state 3)) ;x are pixels

; placing an image onto scene
(define (draw-a-mons-onto-an-empty-scene current-state)
(place-image
 MONSTER (/ WIDTH 2) current-state ; in the middle of the scene
 (empty-scene WIDTH HEIGHT)))

(define MONSTER ..) ;Toolbar>Insert>image

;stop function - detect state 300
(define (state-is-x current-state)
  (>= current-state 300))

(big-bang 0     ;big-bang is imported from the library
  (on-tick add-x-to-state) ;on clock tick
  (to-draw draw-a-mons-onto-an-empty-scene)
  (stop-when state-is-x))


; call
(draw-a-mons-onto-an-empty-scene 10)
