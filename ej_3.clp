; entrada : (sumLists (list  B C A D E E B C E) (list  E E B F D E))
(deffunction list ($?elements) (create$ $?elements))
(deffunction sumLists (?list1 ?list2)
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
)

