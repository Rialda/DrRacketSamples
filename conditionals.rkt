#lang racket

; if expression

(if (= (+ 1 2) 3)
    'yay ;#t
    'nay) ;#f

(if (= (+ 2 2) 9)
    'yay
    'nay)

(if (= (sqrt 49) 7)
    'yay
    'nay)

(if (odd? 3) 
    'odd  ;#t
    'even) ;#f

(if (even? 4) 
    'even
    'odd)

;more than one decision/condition - nested if functions
(define x 7)

(if (even? x)
    'even-number
    (if (= x 7)
        5
        'odd-number))



; branching

(cond [(= x 7) 5] ; these brackets represent different branches
      [(odd? x) 'odd-number]
      [else 'even-number])