;;;(assoc v lst [is-equal?]) → (or/c pair? #f)
;;;  v : any/c
;;;  lst : (listof pair?)
;;;  is-equal? : (any/c any/c -> any/c) = equal?
;;; Locates the first element of lst whose car is equal to v according to is-equal?. If such an element exists, the pair (i.e., an element of lst) is returned. Otherwise, the result is #f.

(assoc 3 (list (list 1 2) (list 3 4) (list 5 6)))
;;; '(3 4)'
(assoc 9 (list (list 1 2) (list 3 4) (list 5 6)))
;;; #f
