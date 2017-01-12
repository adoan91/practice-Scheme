;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname how-many) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (how-many a b c)
  (cond
    ( (> (* b b) (* 4 (* a c))) 2) ;if b*b > 4 * a* c
    ( (= (* b b) (* 4 (* a c))) 1) ;if b*b = 4 *a * c
    ( (< (* b b) (* 4 (* a c))) 0) ;if b*b < 4 * a * c
    ))
(how-many 1 0 -1)
(how-many 2 4 2)
