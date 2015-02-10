;; Program to find odd numbers in a given list
;; Program by SIMSARUL HAQ VENGASSERI

;;main function
(define (odd_numbers ls)
 
        ;;sub function to make a odd? predicate
	(define (odd? x)
   		(cond ((= (remainder x 2) 0) #f)
    		(else #t)))

        
 	(cond ((null? ls) '())
  		((odd? (car ls)) (cons (car ls) (odd_numbers (cdr ls))))
  	      (else (odd_numbers (cdr ls))))) 
