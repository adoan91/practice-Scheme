;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname filter-out-symbol) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (filter-out-symbol lst s)
  (cond
    ((null? lst) '())
    ((eq? s (car lst)) (filter-out-symbol (cdr lst) s))
    (else (cons (car lst) (filter-out-symbol (cdr lst) s)))
    )
  )
(filter-out-symbol '(no no a thousand times no) 'no)
(filter-out-symbol '(no yes a thousand times no) 'no)
