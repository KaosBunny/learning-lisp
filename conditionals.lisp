(format t "Hello... I am a computer. What is your name? :o ~%")
(defvar foo (read))
(setq *print-case* :capitalize)

(if (or (string-equal foo "alice") (string-equal foo "bob"))
    (format t "Nice to meet you ~a ~%" foo) ; This happens if the statement is true!
    (format t "Well... this is awkward...")) ; This happens if the statement is false!

(format t "Can you please give me a number that's > 5 ~a ~%" foo)
(setf foo (read))
(defvar bar 0)

(if (< foo 6)
    (format t "Oops... that wasn't above 5... Exiting... ~%")
    (loop for x from 1 to foo do
      (setf bar (+ bar x))))

(print bar)
