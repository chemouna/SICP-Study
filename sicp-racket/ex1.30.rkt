#lang racket

(require racket/trace)

(define (sum term a next b)
  (define (iter a result)
    (if (> a b) result
        (iter (next a) (+ result (term a)))))
    (iter a 0))

(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(define (sum-cubes a b)
  (sum cube a inc b))

;; (trace cube)
;; (trace sum)
;; (trace sum-cubes)