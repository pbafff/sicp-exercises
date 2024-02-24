#lang sicp

;                                                      
;                                                      
;                                                      
;    ;   ;                        ;    ;               
;        ;                        ;                    
;   ;;  ;;;;  ;;;;  ;; ;;  ;;;   ;;;; ;; ;;; ;;;  ;;;; 
;    ;   ;   ;;  ;   ;; ; ;   ;   ;    ;  ;   ;  ;;  ; 
;    ;   ;   ;    ;  ;        ;   ;    ;  ;   ;  ;    ;
;    ;   ;   ;;;;;;  ;     ;;;;   ;    ;   ; ;   ;;;;;;
;    ;   ;   ;       ;    ;   ;   ;    ;   ; ;   ;     
;    ;   ; ; ;;   ;  ;    ;   ;   ; ;  ;    ;    ;;   ;
;   ;;;  ;;;  ;;;;  ;;;    ;;;;;  ;;; ;;;   ;     ;;;; 
;                                                      
;                                                      
;                                                      

(define (pascal n)
  (if (>= n 0)
      (begin
        (newline)
        (p-row n)
        (pascal (- n 1)))))

(define (p-row n)
  (define (iter n k)
    (if (and (>= n 0) (<= k n))
        (begin
          (display (/ (! n) (* (! k) (! (- n k)))))
          (display " ")
          (iter n (+ k 1)))))
  (iter n 0))

(define (! n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))

(pascal 100)

;                                                            
;                                                            
;                                                            
;                                            ;               
;                                                            
;   ;; ;;  ;;;;   ;;;;  ;;  ;;  ;; ;;  ;;;  ;; ;;; ;;;  ;;;; 
;    ;; ; ;;  ;  ;;   ;  ;   ;   ;; ; ;   ;  ;  ;   ;  ;;  ; 
;    ;    ;    ; ;       ;   ;   ;    ;      ;  ;   ;  ;    ;
;    ;    ;;;;;; ;       ;   ;   ;     ;;;   ;   ; ;   ;;;;;;
;    ;    ;      ;       ;   ;   ;        ;  ;   ; ;   ;     
;    ;    ;;   ; ;;   ;  ;   ;   ;    ;   ;  ;    ;    ;;   ;
;   ;;;    ;;;;   ;;;;    ;;;;; ;;;    ;;;  ;;;   ;     ;;;; 
;                                                            
;                                                            
;                                                            

(define (binomial-co n k)
  (cond ((= n k) 1)
        ((= k 0) 1)
        (else (+ (binomial-co (- n 1) k)
                 (binomial-co (- n 1) (- k 1))))))

(define (pascals-triangle n)
  (define (loop k)
    (if (and (>= k 0) (<= k n))
        (begin
          (display (binomial-co n k))
          (loop (+ k 1)))))
  (loop 0)
  (newline)
  (if (>= n 0)
      (pascals-triangle (- n 1))))

(pascals-triangle 100)
