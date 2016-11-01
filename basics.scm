;;; Pairs
;;; call this procedure(function) with args 1 2
(cons 1 2)

(cons (cons 1 2) 3)

(define foo (cons 1 2))

;; get first element in pair
(car foo)

;; get second one out
(cdr foo)

;; Lists
(cons 1 ())

(define bar (cons 1 ()))
(car bar) ;1
(cdr bar) ; ()

;; manually construct a list
;; which is just a bunch of pairs together
(cons 1 (cons 2 null))

(define mylist (cons 1 (cons 2 (cons 3 ()))))
; (1 2 3)
;; this does a cdr which will get (2, 3)
;; then get car of (2, 3) which is 2
(cadr mylist)

;; do cdr twice, then car = 3
(caddr mylist)

; this turns out to be true
(equal? (list 1 2 3) mylist)

;;; built in function list-ref
; gets element at index 1
(list-ref (list "a" "b" "c") 1) ; b
; gets element at index 2
(list-ref (list "a" "b" "c") 2) ; c


;;; LOOPS
; how would we implement list-ref?
(define (my-list-ref lst n)
  (if (zero? n)
    (car lst)
    (my-list-ref (cdr lst) (- n 1))))

(my-list-ref (list "a" "b" "c") 1)

;;; MAP
(define baz (list 1 2 3))
(define (double x) (* x 2))

(map double baz)

(define (double-all x) (map double x))

;;; how would we implmenet map
(define (my-map fn lst)
  (if (null? lst)
    ()
    (cons (fn (car lst)) (my-map fn (cdr lst)))))

(my-map double baz)


;;; fold
(define qux (list 1 2 3 4))
;;; takes 3 args
;;; 1. function
;;; 2. starting value
;;; 3. list
(foldr + 0 qux)
;;; we get 10, this procedure folds up the list
;;; combines 0 with 4 (+ 0 4), then 4 + 3, ... and so on
;;; you keep combining until you get to the start of the list.
