#lang racket/base

(require (rename-in racket [define 1-def]))

(define-syntax (define stx)
  (syntax-case stx ()
    ((_ name expr)
     (identifier? (syntax name))
     #'(1-def name expr))))

(define (atom? x)
  (and (not (pair? x))
       (not (null? x))))

(provide #%module-begin #%top-interaction #%datum #%app
         car cdr cons eq? null? number? zero? add1 sub1
         quote lambda cond and or else atom? define)
