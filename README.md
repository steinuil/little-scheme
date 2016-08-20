little-scheme
=============
Little Scheme is a racket `#lang` that provides the subset of Scheme used in [The Little Schemer](https://mitpress.mit.edu/index.php?q=books%2Flittle-schemer), and nothing else.

## Example
```scheme
#lang little-scheme

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f)))

(lat? '(a b c)) ;=> #t
```
