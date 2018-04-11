#lang racket
;;;;Exercise 1.1
;This will print out 10
10
;This will print out 12
(+ 5 3 4)
;This will print out 8
(- 9 1)
;This will print out 3
(/ 6 2)
;This will print out 6
(+ (* 2 4)(- 4 6))
;Will not print out anything
(define a 3)
;Will not print out anything
(define b (+ a 1))
;This will print out 19 
(+ a b (* a b))
;This will print out false
(= a b)
;This will print out 4
(if (and (> b a) (< b (* a b)))
    b
    a)
;This will print out 16
(cond((= a 4) 6)
     ((= b 4) (+ 6 7 a))
     (else 25))

;This will print out 6
(+ 2 (if (> b a ) b a))

;This will print out -4
(* (cond ((> a b) a)
         ((= a b) b)
         (else -1))
   (+ a 1))

;;;;Exercise 1.2
;Denom -60
;Num 74/5
(/ (+ 5 4 (- 2 ( - 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)) )

(define (square x) (* x x))

(square 5)


;;;;Exercise 1.3
(define (sum-of-sq-largest a b c)
  (define (sum-of-sq x y)
    (+ (* x x)(* y y))
    )
  (cond((> a b c) (sum-of-sq a b))
       ((> a c b) (sum-of-sq a c))
       ((> b a c) (sum-of-sq a b))
       ((> b c a) (sum-of-sq c b))
       ((> c a b) (sum-of-sq a c))
       ((> c b a) (sum-of-sq c b))
       ))

(sum-of-sq-largest 1 2 3)

;;;;Exercise 1.4
;This expression prints a + b if b > 0, a - b if b <= 0.
;So a + |b|

(define (a-plus-abs-b a b)
  ((if (> b 0) + - ) a b))

(a-plus-abs-b 5 -4)


;;;;Exercise 1.4
;For substitution:
;(test 0 (p))
;(test 0
;This will not terminate
;https://cs.stackexchange.com/questions/40758/difference-between-normal-order-and-applicative-order-evaluation

;(define (p) (p))

#;(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p))

