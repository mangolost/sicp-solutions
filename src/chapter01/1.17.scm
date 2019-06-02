#lang sicp

(define (multiply a b)
    (cond ((= b 0)
            0)
          ((is_even? b)
            (double (multiply a (halve b))))
          (else
            (+ a (multiply a (- b 1))))))

(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(define (is_even? n)
  (= (remainder n 2) 0))

(multiply 9 6)
