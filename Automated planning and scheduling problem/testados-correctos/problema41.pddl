
(define (problem prueba-1)
    (:domain exercises)
    (:objects level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 - level
              day2 day3 day4 day5 day6 day7 day8 day9 day10 day11 day12 day13 day14 day15 - date
              exercise1 exercise2 exercise3 exercise4 exercise5 - exercise )
    (:init
          (sucesor day1 day2) ; fijate que day1 ya no esta en :objects. lo he puesto constante en el domain y aqui hay que quitarlo.
          (sucesor day2 day3) ; aun asi hay que declarar su sucesor correctamente.
          (sucesor day3 day4) ; es algo parecido con lo que pasara en la extension 3 con gap0 y gap6
          (sucesor day4 day5)
          (sucesor day5 day6)
          (sucesor day6 day7)
          (sucesor day7 day8)
          (sucesor day8 day9)
          (sucesor day9 day10)
          (sucesor day10 day11)
          (sucesor day11 day12)
          (sucesor day12 day13)
          (sucesor day13 day14)
          (sucesor day14 day15)
          (sucesor day15 END)
          
          (sucesor level1 level2)
          (sucesor level2 level3)
          (sucesor level3 level4)
          (sucesor level4 level5)
          (sucesor level5 level6)
          (sucesor level6 level7)
          (sucesor level7 level8)
          (sucesor level8 level9)
          (sucesor level9 level10)
          
          (achieved exercise1 level1)
          (achieved exercise2 level2) ; f
          (achieved exercise3 level4) 
          (achieved exercise4 level1)
          (achieved exercise5 level10)

          
          (preparador exercise1 exercise2)
          (preparador exercise4 exercise2)
          
          (predecesor exercise3 exercise1)
    )

    (:goal (achieved exercise2 level5) ) 
)