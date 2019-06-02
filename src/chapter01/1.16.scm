#lang sicp

(define (fast-expt b n)
    (fast-expt-iter b n 1))

(define (fast-expt-iter b n a)
    (cond ((= n 0) a)
          ((is_even? n)
            (fast-expt-iter (* b b) (/ n 2) a))
          (else
            (fast-expt-iter b (- n 1) (* b a)))))

(define (is_even? n)
  (= (remainder n 2) 0))

(fast-expt 3 6)
  
