(deffunction list ($?elements) (create$ $?elements))
(deftemplate Pais
   (slot nombre)
   (slot bandera)
)
(assert (Pais (nombre "Argentina") (bandera (create$ "azul" "blanco" "azul"))))
(assert (Pais (nombre "Peru") (bandera (create$ "rojo" "blanco"))))
(assert (Pais (nombre "Brasil") (bandera (create$ "verde" "amarillo" "azul"))))
(assert (Pais (nombre "Chile") (bandera (create$ "azul" "blanco" "azul" "rojo"))))
(assert (Pais (nombre "Alemania") (bandera (create$ "negro" "rojo" "amarillo"))))
(assert (Pais (nombre "Japon") (bandera (create$ "blanco" "rojo" ))))
(assert (Pais (nombre "Estonia") (bandera (create$ "azul" "negro" "azul"))))
(assert (Pais (nombre "China") (bandera (create$ "rojo" "amarillo" ))))

(defrule ColoresABuscar =>
(bind ?colors (create$ "rojo"))
(find-all-facts ((?p Pais)) (= ?m:bandera ?colors))
) 
