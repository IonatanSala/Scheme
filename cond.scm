;;; better way of writing if statements
;;; (cond ((if true run x1) (x1)) (if true run x2) (x2)) (else (run this)))

(define what-is-it
  (lambda (x)
    (cond ((zero? x) (display "It's zero"))
          ((= x 1) (display "It's 1"))
          ((= x 2) (display "It's 2"))
          (else (display "It's either greater than 2 or less than 0")))))
