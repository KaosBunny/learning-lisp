;;; This is me practicing more complex conditionals.
(format t "What would you like to eat? ~%")
(defvar *food* (read))

;; This is a switch case but instead of switching based on one variable, it switches based on individual truth statesments.
(cond
  ((string-equal *food* 'apples)
    (print *food*))
  ((string-equal *food* 'bananas)
    (print *food*))
  ((string-equal *food* 'pears)
    (print *food*)))

;; Fizzbuzz ;v;
(loop for x from 0 to 49 do
  (cond
    ((= (mod x 15) 0)
     (format t "fizzbuzz"))
    ((= (mod x 3) 0)
     (format t "fizz"))
    ((= (mod x 5) 0)
     (format t "buzz"))
    (t (format t "~a" x)))
  (format t "~%"))

;; You also have when and unless statements...
(format t "What would you like to eat? ~%")
(setf *food* (read))

;; This is logically equivilant to if (x != y)
(unless (string-equal *food* "icecream")
  (format t "Wow... you're boring as fuck... ~%"))
;; This is logically equivilant to if (x == y)
(when (string-equal *food* "icecream")
  (format t "Based... Exceedingly based. ~%"))

;; Boolean Operation
(format t "~%These are the different equality operations... ~%")
(format t "(= 3 3.0) = ~a ~%" (= 3 3.0))
(format t "(equal 3 3.0) = ~a ~%" (equal 3 3.0))
(format t "(equalp 3 3.0) = ~a ~%" (equalp 3 3.0))
(format t "(equal \"String\" \"string\") = ~a ~%" (equal "String" "string"))
(format t "(equalp \"String\" \"string\") = ~a ~%" (equalp "String" "string"))
(format t "(string-equal \"String\" \"string\") = ~a ~% ~%" (string-equal "String" "string"))

;; Negation, and, or
(format t "Negation... ~%")
(format t "(not (= 1 1)) = ~a ~% ~%" (not (= 1 1)))
(format t "And... ~%")
(format t "(and (= 1 1) (= 2 1)) = ~a ~% ~%" (and (= 1 1) (= 2 1)))
(format t "Or... ~%")
(format t "(or (= 1 1) (= 2 1)) = ~a ~% ~%" (or (= 1 1) (= 2 1)))

;; Mathematical Operations
(format t "These are the mathematical operations... ~%")
(format t "(> a b), (< a b), (=> a b), (=> a b) ~%")
