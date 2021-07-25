;;;; An approximate implementation of SRFI 17 on top of R6RS identifier-syntax.

;;; It is approximate because identifier-syntax macros are macros, whereas
;;; SRFI-17 getter-with-setter is defined as a procedure.
;;; In this implementation, therefore, getter-with-setter is a macro too.

;; The (pseudo) arguments of this macro are procedures.
(define-syntax getter-with-setter
  (syntax-rules ()
  ((getter-with-setter get set)
   (define-syntax
     (syntax-rules ()
       
;; This needs a rethink
