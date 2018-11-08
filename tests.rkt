#lang racket

(require (file "assignment_q2.rkt"))
     
(define (runTests)
  (begin
    (display "Running tests...\n")
    ;begin calling test functions
    (printf "Part A: ~a\n" (test_ins_beg))
    (printf "Part B: ~a\n" (test_ins_end))
    (printf "Part C: ~a\n" (test_count_top_level))
    (printf "Part D: ~a\n" (test_count_instances))
   ; (printf "Part E: ~a\n" (test_count_instances_tr))
    ;(printf "Part F: ~a\n" (test_count_instances_deep))

    ;end calling test functions
    (display "\nTests complete!\n")))

;Begin test functions
(define (test_ins_beg)
  (equal? '(1 2 3 4) (ins_beg 1 '(2 3 4))));should be true

(define (test_ins_end)
  (equal? '(23 45 67 32 76) (ins_end '76 '(23 45 67 32))));should e true

(define (test_count_top_level)
  (equal? 6 (count_top_level '(a b c d e f))));should be true

(define (test_count_instances)
  (equal? 5 (count_instances '1 '(1 0 0 0 1 1 1 1 0 0))));should be true

;End test functions

;Run the tests
(runTests)