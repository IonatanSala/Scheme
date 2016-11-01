;;; Sometimes one doesn't want to escape evaluation of an entire list. In this case, one can use the ` (backquote) operator, also called quasiquote with the , (comma) operator, also called unquote. Quasiquote behaves like quote, except that unquoted expressions are evaluated:

`(1 2 ,(+ 3 4))   ; => '(1 2 7)

;;; The quote special form behaves like ' applied to its argument:
(quote (1 2 (+ 3 4)))   ; => '(1 2 (+ 3 4))

;;; The quasiquote and unquote special forms behaves like ` and , respectively:
(quasiquote (1 2 (unquote (+ 3 4))))  ; => '(1 2 7)


;;; Since we have a method for representing programs as data, it is convenient to have a function that evaluates that data as if it were a part of the currently running program.
(define x 5)
(define y '(+ x 10))
(eval y) ; => 15


;;; Scheme provides a variant of unquote for use when you want to merge an unquoted list into a literal list, rather than nesting it.
;;; For example, suppose you want to embed a phrase in a sentence, where the phrase is a list of symbols, and the sentence is a list of symbols.
;;; If you tried this with unquote, you'd get a nested list, rather than just a list of symbols:

(define phrase-of-the-day '(the Lord helps those who take a big helping for themselves))
`(Remember that ,phrase-of-the-day)
;;; => (Remember that (the Lord helps those who take a big helping for themselves))

;;; Rather than using ,expr), we can use use (unquote-splicing expr), or the syntactically sugared form, ,@expr.
`(And remember that ,@phrase-of-the-day)
;;; => (And remember that the Lord helps those who take a big helping for themselves)
