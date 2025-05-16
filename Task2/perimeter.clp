(deftemplate rect
     (slot height)
     (slot width))

(defrule perimeter
    (rect (height ?h) (width ?w))
     =>
    (bind ?p (+ (* 2 ?h) (* 2 ?w)))
    (printout t "The perimeter of the rectangle is: " ?p crlf))

(assert (rect (height 4) (width 3)))

(run)
