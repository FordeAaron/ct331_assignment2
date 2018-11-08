#lang racket


(define bin_tree'(((() 5 ()) 10 (() 15 ())) 18 ((() 30 ()) 43 (() 53 (() 68())))))
(define lst '( 4 7 3 6 83 7))

;Part A
(define (print_sorted tree)
  (begin (cond [(not (empty?( car tree))) (print_sorted (car tree))])
         (printf "~a~n" (cadr tree))
         (cond [(not (empty? (caddr tree))) (print_sorted (caddr tree))])))
(display "Part A\n") 
(display "Sorted\n") 
(print_sorted bin_tree)

;Part B
(define (num_present el tree)
   (cond [(null? tree) #f] ;false if tree is empty
          [(equal? el (cadr tree)) #t] ;true if equal to current node
        [(< el (cadr tree)) (num_present el (car tree))] 
        [(> el (cadr tree)) (num_present el (caddr tree))]))
;testing
(display "Part B \n")
(display "Should return #t as 5 is in the tree\n")

;Part C
(define (insert item tree)
  (cond [(empty? tree)(list '() item '())]
       
;Part D
;(define(list_insert lst tree))

;Part E
;(define(higher_sort list))