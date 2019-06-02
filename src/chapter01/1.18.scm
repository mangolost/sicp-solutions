#lang sicp

(define (multiply a b)
    (multiply-iter a b 0))

(define (multiply-iter a b product)
    (cond ((= b 0)
            product)
          ((is_even? b)
            (multiply-iter (double a)
                        (halve b)
                        product))
          (else
            (multiply-iter a
                        (- b 1)
                        (+ a product)))))

(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(define (is_even? n)
  (= (remainder n 2) 0))

(multiply 9 6)
