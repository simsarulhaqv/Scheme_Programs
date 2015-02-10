;; Program to reverse a given input list
;; Program by SIMSARUL HAQ VENGASSERI

;;main function
(define (reverse lst)

        ; sub function for appending list2 with list1
	(define (append lst1 lst2)
                ;null check
    		(cond ((null? lst1) lst2)
    		(else (cons (car lst1) (append (cdr lst1)lst2)))))

        ;null check
	(cond ((null? lst) '())
	((null? (cdr lst)) (list(car lst)))
	(else (append (reverse (cdr lst)) (list (car lst)))))) 
