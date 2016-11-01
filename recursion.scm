;;; factorial
(define (fact n)
  (if (= 0 n)
    1
    (* n (fact ( - n 1)))))

(fact 3)
;;; This is what happens
; (* 3 (fact 2))
; (* 3 ( * 2 (fact 1)))
; (* 3 ( * 2 (* 1 (fact 0))))
; (* 3 ( * 2 ( * 1 1)))
; (* 3 ( * 2 1)
; (* 3 2)
; 6


;; fibonacci
(define (fib n)
  (if (<= n 2)
    1
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 3)


;;; countdown
(define (countdown n)
  (if (= n 0)
  ()
  (begin
    (display n)
    (newline)
    (countdown (- n 1)))))

(countdown 4)


;;; map
(define (my-map fn lst)
  (if (null? lst)
    ()
    (cons (fn (car lst)) (my-map fn (cdr lst)))))

(my-map abs (list 2 (- 3) 4))


;;; Tail call optimisation
; The previous stack frame is no longer needed
; throw it away

(define (fact-it n)
  (define (impl acc count)
    (if (= 0 count)
      acc
      (impl (* count acc) (- count 1))))

  (impl 1 n))

(fact-it 3)
