;;; defining a variable
(define foo 3)

;;; define a function
(define (square x) ( * x x))

(square 4)

;;; get absolute value
(define (abs x) (if (< x 0) ( - x) x))
(abs -3)

;;; one data structure, this is list
;(sort (list 4 6 5))
;(length (list 4 6 5))

(define my-list (list 1 2 3 4 5))

;;; extract the 1st elmenet
;(car my-list)
;;; extract the 2nd element
;(cadr my-list)
;;; extract the 3rd element
;(caddr my-list)

;;; get everything but the 1st element
;(cdr my-list)
;;; get everything but the 1st element & 2nd element
;(cddr my-list)
;;; get everything but the 1st, 2nd & 3nd element
;(cdddr my-list)

; get the sum of list
(define (sum list-of-values)
  (if (= 1 (length list-of-values))
    (car list-of-values)
    (+ (car list-of-values) (sum (cdr list-of-values)))))


;;; Wierd - Functions are values
(define (double value) (* 2 value))

(define (apply-twice fn value) (fn (fn value)))

(apply-twice double 2)

;;; swaping the 2nd elmenet with the 3rd in a list
(define (swap-2-3 x)
  (list (car x) (caddr x) (cadr x)))


(define (four-over-two) (list '/ 4 2))

(eval four-over-two)


;;; Everything is generic
(sort (list 1 4 3) <)
; (1 3 4)
(sort (list "abc" "a" "ab") string<?)
; ("a" "ab" "abc")
