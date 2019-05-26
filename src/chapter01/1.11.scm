#lang sicp

(define (func1_recursion n)
  (if (< n 3)
      n
      (+ (func1_recursion (- n 1))
         (* 2 (func1_recursion (- n 2)))
         (* 3 (func1_recursion (- n 3))))))

(func1_recursion 10)

(define (func2_iteration n)
    (f-iter 2 1 0 0 n))

(define (f-iter x y z i n)
    (if (= i n)
        z
        (f-iter (+ x (* 2 y) (* 3 z))
                x                    
                y                    
                (+ i 1)
                n)))

(func2_iteration 10)
                 