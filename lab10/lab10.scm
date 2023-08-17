;(define (over-or-under num1 num2)
;		(if (< num1 num2)
;			-1
;			(if (= num1 num2)
;				0
;				1
;			)
;		)
;) 

(define (over-or-under num1 num2)
	(cond
		((< num1 num2) -1)
		((= num1 num2) 0)
		((> num1 num2) 1)
	)
)

(define (make-adder num)
	(lambda (inc) (+ num inc))
)

(define (composed f g) 
	(lambda 
		(x)
		(f (g x))
	)
)

(define lst (
cons(
	cons 1 nil) 
	(cons 2 
	(cons (cons 3 (cons 4 nil)) 
	(cons 5 nil)))
	)
)
;(define lst (list (list 1) 2 (list 3 4) 5))
;(define lst 
;	(list 
;		(cons 1 nil) 
;		2
;		(cons 3 (cons 4 nil)) 
;		5
;	)
;)



(define (remove item lst)
  (cond ((null? lst) '()) ; 如果列表为空，返回空列表
        ((equal? (car lst) item) (remove item (cdr lst))) ; 如果第一个元素与指定项相同，递归调用移除函数并跳过第一个元素
        (else (cons (car lst) (remove item (cdr lst)))))) ; 否则，将第一个元素添加到结果列表中，并递归调用移除函数处理剩余部
