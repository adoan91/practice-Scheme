;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname shellvolume) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; shell-volume, that takes two arguments,
; inner-radius and outer-radius, and finds the volume of
; a hollow spherical shell with the appropriate
; inner and outer radii.
(define (shellvolume inner-r outer-r)
  (- (/ (* (* 4 3.14) (expt outer-r 3)) 3)
     (/ (* (* 4 3.14) (expt inner-r 3)) 3)
     )
  )
(shellvolume 7 3)
(shellvolume 5 2)
