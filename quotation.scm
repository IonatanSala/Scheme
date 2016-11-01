(list 'a 'b 'c)

(list 'a (list 'a 'b2) 'c)
;;; this is equivalent to the aboce
'(a (b1 b2) c)

(define forty-two '(* 6 7))
(eval forty-two)

(define (safe-sum x y)
  (if (and (integer? x) (integer? y))
      (+ x y)
      ("INCORRECT TYPES")))

(define (nonint? x)
  (and (real? x) (not (integer? x))))

(define (safe-sum x y)
  (if (and (nonint? x) (nonint? y))
    (+ x y)
    "INCORRECT TYPES"))

(define (replace lst find repl)
  (if (pair? lst)
    (cons
      (replace (car lst) find repl)
      (replace (cdr lst) find repl))
    (if (equal? find lst)
      repl
      lst)))
