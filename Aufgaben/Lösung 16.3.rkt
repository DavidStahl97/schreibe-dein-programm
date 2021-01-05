#lang racket

(require math/number-theory)

;; Racket arbeitet mit dem applicative-order

(define y
  (λ (f)
    ((λ (x) (f (x x)))
     (λ (x) (f (x x))))))


(define y1
  (λ (f)
    ((λ (x) ((curry f) (λ () (x x))))
     (λ (x) ((curry f) (λ () (x x)))))))

(define find-prime
  (λ (f x)
    (if (prime? x) x ((f) (add1 x)))))


        