(deffunction list ($?elements) (create$ $?elements))
(deffunction sumaLista (?lista)
   (bind ?n (length$ ?lista))
   (bind ?i 1)
   (bind ?suma 0) ; variable para realizar el seguimiento de la suma
   (while (<= ?i ?n)
      (bind ?suma (+ ?suma (nth$ ?i ?lista))) ; agregar el elemento actual a la suma
      (bind ?i (+ ?i 1))
   )
   (return ?suma) ; devolver la suma total
)
