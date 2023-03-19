 # Notas
-  La función nth$ es una función incorporada en CLIPS que se utiliza para acceder al elemento en la n-ésima posición de una lista.
`````
nth$ ?i ?lista
`````
- El comando member$ en CLIPS se utiliza para verificar si un elemento está presente en una lista.
`````
member$ ?elemento ?unionf
`````
## Ejercicio 3 como regla
`````
(defrule sumLists
    (not (unionLists))
    =>
    (bind ?list1 (create$ B C A D E E B C E))
    (bind ?list2 (create$ E E B F D E))
    (bind ?union (create$ ?list1 ?list2))
    (bind ?unionUnrepeted (create$))
    (printout t ?unionUnrepeted crlf) ;funcion vacia para almacenar
    (foreach ?element ?union
        (if (not (member$ ?element ?unionUnrepeted))
            then
            (bind ?unionUnrepeted (create$ ?element ?unionUnrepeted))
        )
    )
    (printout t "UNION: " ?unionUnrepeted crlf)
    (assert (unionLists))    
)
(defrule encontrar-paises
(not (paisesEncontrados))
(bind ?paises (create$))

)
`````
