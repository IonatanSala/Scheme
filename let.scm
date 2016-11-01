;;; let example
;;; let works in the following way:
;;; (let ((var1 val1) (var2 val2) ...) (expr where you have access to var1, var2 ...))
(define sum+1
  (lambda (x y)
    (+ 1 (let ((a x) (b y)) (+ a b)))))
