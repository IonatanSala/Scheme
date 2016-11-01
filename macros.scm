;;; Macros in scheme

(define num 3)

(cond
  ((zero? num) (display "Z"))
  ((positive? num) (display "P"))
  (else (display "N")))

;;; Don't repeat yourself
;;; how can we avoid repeating ourselves?
;;; how can we speak at the right level
;;; This is hiding complexity, abstracting things away

;;; Several ways of hiding complexity
;;; functions
;;; classes
;;; Extending the language, 2 ways of extending the language
  ;;; code generation
  ;;; Macros (withing the language mechanism to extend the language itself)

;;; Examples of code generations
;;; One of these code-generation techniques is distributed with NumPy(Python library) and allows easy integration with Fortran and (simple) C code

;;; First attempt:
(define 3-state
  (lambda (value positive-body zero-body negative-body)
    (cond
      ((zero? value) zero-body)
      ((positive? value) positive-body)
      (else negative-body))))

;;; you can then call the function
;;; (3-state 100 (display "P") (display "Z") (display "N"))
;;; => PZN
;;; You get the above output because it evaluates the arguments before it even calls the 3-state function

;;; A solution, defining a macro in scheme
(define-syntax
  3-state
  (syntax-rules ()
    ((3-state value positive-body zero-body negative-body)
    (cond
      ((zero? value) zero-body)
      ((positive? value) positive-body)
      (else negative-body)))))

;;; (3-state 100 (display "P") (display "Z") (display "N"))
;;; this prints P
