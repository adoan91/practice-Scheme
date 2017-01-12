;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname pMinMax) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (minoflist L)
  (cond
    ( (null? (cdr L)) (car L))
    ( (< (car L) (minoflist (cdr L))) (car L))
    (else (minoflist (cdr L)))
    )
  )
(define (maxoflist L)
  (cond
    ( (null? (cdr L)) (car L))
    ( (> (car L) (maxoflist (cdr L))) (car L))
    (else (maxoflist (cdr L)))
    )
  )
(define (pMinMax L)
  (list (minoflist L) (maxoflist L))
  )
(pMinMax '(1 2 3))
(pMinMax '(11 -2 33))
