#lang sicp

;杨辉三角
(define (triangle row col)
  (cond ((< row col) -1)
        ((< col 1) -1)
        ((< row 3) 1)
        (else
         (cond ((= col 1) 1)
               ((= col row) 1)
               (else (+ (triangle (- row 1) (- col 1)) (triangle (- row 1) col)))))))

(triangle 6 3)
       
  
        