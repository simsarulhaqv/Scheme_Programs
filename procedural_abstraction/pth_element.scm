;; To find pth element in a given list
;; Program by SIMSARUL HAQ VENGASSERI

;;iterative version

;; main function
(define (pth lst p)

        ;; sub fuction
	(define (find lst p count)
                ;;null check of list
   		(cond ((null? lst) (display "Required element do not exist") '())
                ;; check if count is p
   		((= count p) (car lst))
                ;;incrementing count
   		(else (find (cdr lst) p (+ count 1)))))

        ;; passing count initially as 1
 	(find lst p 1)) 
