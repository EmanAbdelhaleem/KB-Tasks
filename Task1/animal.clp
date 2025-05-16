(deftemplate animal
       (slot type))

(defrule check_animal
         (animal (type ?t))
         (test (or (eq ?t duck) (eq ?t turtle)))
         =>
         (printout t "This is a " ?t "." crlf))

(assert (animal (type duck)))
(assert (animal (type snake))) ;

(run)