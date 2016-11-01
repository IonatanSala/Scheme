;;; anonymous function
(lambda (x y) (+ x y))

(define s (lambda (x y) (+ x y)))

(define (mcons a b)
  (lambda (cmd)
    (if (equal? cmd "car")
      a
      b)))

(define (mcar pair) (pair "car"))
(define (mcdr pair) (pair "cdr"))

(define foo (mcons 1 2))

(mcar foo)
(mcdr foo)

(define n0 (lambda () null))
(define (minc x) (lambda () x))
(define (mdec x) (x))

(define n1 (minc n0))
(define n2 (minc n1))

(define (mzero? x) (null? (x)))

(define (mequal? x y)
  (cond
    ((mzero? x) (mzero? y))
    ((mzero? y) (mzero? x))
    (else (mequal? (mdec x) (mdec y)))))


;;; function call: (func args...)
;;; special form lambda: (lambda (params...) expr)
;;; special form define: (define global expr)


(define age-plus-ten
  (lambda (a)
    (+ a 10)))

;;; special form if: (if GAURD THEN ELSE)

(define fact
  (lambda (n)
    (if (zero? n)
      1
      (* n (fact (- n 1))))))
