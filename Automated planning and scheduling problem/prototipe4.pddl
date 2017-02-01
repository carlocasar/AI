
(define (domain exercises)
   (:requirements :adl :fluents)
   (:types exercise order
           date level - order )
   (:constants day1 - date)
      
   (:predicates
      (kicked-off)
      (sucesor ?pre ?pos - order)
      (achieved ?ex - exercise ?lvl - level)
      (preparador ?pre ?ex - exercise)
      (predecesor ?pre ?ex - exercise)
      (current-day ?day - date)
      (just-done ?ex - exercise)
      (done-today ?ex - exercise)
      (progress ?ex - exercise ?lvl - level)
   )
   
   (:functions
    (time-spent)
    (time ?ex - exercise)
   )

   (:action do-exercise
    :parameters (?ex - exercise ?lvl - level)
    :precondition (and
                   (kicked-off)
                   (<= (+ (time-spent) (time ?ex)) 90)
                   (exists (plvl - level)
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
             (= (time-spent) (+ (time-spent) (time ?ex)))
            )
   )
   
   (:action change-day
    :parameters (?today ?tomorrow - date)
    :precondition (and (current-day ?today)
                       (sucesor ?today ?tomorrow))
    :effect (and
             (not (current-day ?today))
             (current-day ?tomorrow)
             (forall (?ex - exercise ?lvl - level)
                      (when (progress ?ex ?lvl)
                             (achieved ?ex ?lvl)
                             (not (just-done ?ex))
                             (not (done-today ?ex))
                             (not (progress ?ex ?lvl))))
             (= (time-spent) 0)
            )
   )
   
   (:action kick-off
    :parameters (?first - date)
    :precondition (and (not (kicked-off))
                       (= ?first day1))
    :effect (and (kicked-off)
                 (current-day ?first)
                 (= (time-spent) 0))
   )
)
