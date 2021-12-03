;;; If else and multiple statements in an if...
(defvar x (read))
(defvar y (read))

;; (Progn args) can be used to pass multiple lines into the branch of a conditional statement.
(if (= x y)
    (progn
      (format t "This was written in one line... ~%Would you like to print your number? ~%")
      (setf x (read))
      (if (= x 1)
          (format t "Your number is ~s." x)))
    (progn ;; This is the else statement of the if c:
      (format t "They weren't equal... Would you like to print them anyway? ~%")
      (setf x (read))
      (if (= x 1)
          (format t "Your number is ~s." x))))
