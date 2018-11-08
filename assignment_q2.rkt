#lang racket
(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)
(provide count_instances_tr)
;(provide count_instances_deep)

(define first (list 76 58 222 12 6 34 998 ))
(define second (list 987 23 '(73 38)))

;Part A
(define (ins_beg el lst)
  (append(list el)lst))

;Part B
(define (ins_end el lst)
  (append lst(list el)))

;Part C
(define(count_top_level lst)
  (length lst))
  
;Part D
(define(count_instances el lst)
 (cond [(null? lst) 0]
        [(equal? el (car lst)) (+ 1 (count_instances el (cdr lst)))]
        [else (count_instances el (cdr lst))]))
   
;part E
  ;(define(count_intsnaces_tr item lst))

;Part F
;(define(count_instances_deep))