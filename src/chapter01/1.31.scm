#lang sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (inc n)
  (+ n 1))

(define (factorial n)
  (define (f x) x)  
  (product f 1 inc n))

(factorial 10)

(define (product2 term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (+ a 1)
                  (* (term a) result))))
    (iter a 1))

(define (pi n)
  (define (numer-term i)
    (cond ((= i 1)
            2)
          ((even? i)
            (+ i 2))
          (else
            (+ i 1))))
  (define (denom-term i)
    (if (odd? i)
        (+ i 2)
        (+ i 1)))
  (define (inc x)
    (+ 1 x))
    (* 4.0
        (/ (product2 numer-term
                        1
                        inc
                        n)
               (product2 denom-term 
                        1
                        inc
                        n))))

(pi 50000)






