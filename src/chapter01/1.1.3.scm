#lang sicp

; 请定义一个过程,它以三个数为参数,返回其中较大的两个数的和
(define (func1 x y z)
(cond ((< x y)
       (cond ((< x z) (+ y z))
        (else (+ x y))))
 (else
  (cond ((< y z) (+ x z))
   (else (+ x y))))))