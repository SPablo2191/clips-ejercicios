(deftemplate país
   (slot nombre (type STRING))
   (slot bandera (type MULTIFIELD))
)
(assert (país (nombre "Argentina") (bandera (create$ "azul" "blanco" "azul"))))
(assert (país (nombre "Peru") (bandera (create$ "rojo" "blanco"))))
(assert (país (nombre "Brasil") (bandera (create$ "verde" "amarillo" "azul"))))
(assert (país (nombre "Chile") (bandera (create$ "azul" "blanco" "azul" "rojo"))))
(assert (país (nombre "Alemania") (bandera (create$ "negro" "rojo" "amarillo"))))
(assert (país (nombre "Japon") (bandera (create$ "blanco" "rojo" ))))
(assert (país (nombre "Estonia") (bandera (create$ "azul" "negro" "azul"))))
(assert (país (nombre "China") (bandera (create$ "azul" "blanco" "azul"))))
(assert (país (nombre "Argentina") (bandera (create$ "azul" "blanco" "azul"))))
(assert (país (nombre "Argentina") (bandera (create$ "azul" "blanco" "azul"))))
(assert (país (nombre "Argentina") (bandera (create$ "azul" "blanco" "azul"))))

