
(define (domain exercises)
   (:requirements :adl)
   (:types exercise order
           date level - order )
   (:constants day1 END - date)
   
   (:predicates
      (kicked-off)
      (finished)
      (sucesor ?pre ?pos - order)
      (achieved ?ex - exercise ?lvl - level)
      (preparador ?pre ?ex - exercise)
      (predecesor ?pre ?ex - exercise)
      (current-day ?day - date)
      (just-done ?ex - exercise)
      (done-today ?ex - exercise)
      (progress ?ex - exercise ?lvl - level)
   )
   
   (:action do-exercise
    :parameters (?ex - exercise ?lvl - level)
    :precondition (and
                   (kicked-off)
                   (not (finished))
                   (exists (?plvl - level)
                            (and (sucesor ?plvl ?lvl)
                                 (achieved ?ex ?plvl)))
                   (forall (?pre - exercise)
                            (and (imply (preparador ?pre ?ex)
                                         (done-today ?pre))
                                 (imply (predecesor ?pre ?ex)
                                         (just-done ?pre))))
                  )
    :effect (and
             (forall (?x - exercise)
                      (not (just-done ?x)))
             (progress ?ex ?lvl)
             (done-today ?ex)
             (just-done ?ex)
            )
   )
   
   (:action change-day
    :parameters (?today ?tomorrow - date)
    :precondition (and (current-day ?today)
                       (sucesor ?today ?tomorrow))
    :effect (and
             (not (current-day ?today))
             (current-day ?tomorrow)
             (when (= ?tomorrow END) (finished))
             (forall (?ex - exercise ?lvl - level)
                      (when (progress ?ex ?lvl)
                             (and (achieved ?ex ?lvl)
                                  (not (just-done ?ex))
                                  (not (done-today ?ex))
                                  (not (progress ?ex ?lvl)))))
            )      
   )
   
   (:action kick-off
    :parameters (?first - date)
    :precondition (and (not (kicked-off))
                       (= ?first day1))
    :effect (and (kicked-off)
                 (current-day ?first))
   )
)
