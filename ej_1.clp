(deffunction min_value ($?values) 
(switch (length$ values) 
(case 0  then (return))
(case 1  then (return ?values))
(default (return (min (expand$ ?values))))))