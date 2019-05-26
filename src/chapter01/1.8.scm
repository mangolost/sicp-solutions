#lang sicp

;计算立方根
(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (< (abs (/ (- (* guess guess guess) x) x)) 0.000001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(cbrt 999)