#lang scribble/manual
@(require (for-label (except-in racket define)
                     little-scheme))

@title{Little Scheme}
@author{steenuil}

@defmodule[little-scheme]

Little Scheme defines the subset of Scheme used in The Little Schemer.

It provides the primitive procedures @racket[car], @racket[cdr], @racket[cons],
@racket[eq?], @racket[null?], @code[#:lang "little-scheme"]|{atom?}|,
@racket[number?], @racket[zero?], @racket[add1], @racket[sub1],
@code[#:lang "little-scheme"]|{define}|, @racket[quote], @racket[lambda],
@racket[cond], @racket[and] and @racket[or].

All other Racket/Scheme forms (@racket[let], @racket[if] etc.) are not defined.

@defform[(define id expr)]{
  Binds @racket[id] to the result of @racket[expr]. The second form that binds
  @racket[id] to a procedure is not allowed; use @racket[lambda] instead.
}

@defproc[(atom? [v any/c]) boolean?]{
  Returns @racket[#t] if @racket[v] is an atom, @racket[#f] otherwise.
}