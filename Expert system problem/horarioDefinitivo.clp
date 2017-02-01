; Fri May 13 13:46:40 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Duracion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_die
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values Poca Media Mucha)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_obj
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre_hab
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ejercicios_que_lo_cumplen
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(inverse-slot Objetivos_que_cumple)
		(create-accessor read-write))
	(single-slot Usa_aparato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre_ej
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre_musc
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Objetivos_que_cumple
		(type INSTANCE)
;+		(allowed-classes Objetivo)
;+		(inverse-slot Ejercicios_que_lo_cumplen)
		(create-accessor read-write))
	(multislot Lo_usan_ejercicios
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(inverse-slot Usa_musculos)
		(create-accessor read-write))
	(multislot Usa_musculos
		(type INSTANCE)
;+		(allowed-classes Musculo)
;+		(inverse-slot Lo_usan_ejercicios)
		(create-accessor read-write)))

(defclass Ejercicio
	(is-a USER)
	(role concrete)
	(multislot Objetivos_que_cumple
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values Poca Media Mucha)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Usa_aparato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Usa_musculos
		(type INSTANCE)
;+		(allowed-classes Musculo)
		(create-accessor read-write))
	(single-slot Nombre_ej
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Duracion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Musculo
	(is-a USER)
	(role concrete)
	(single-slot Nombre_musc
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Lo_usan_ejercicios
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write)))

(defclass Objetivo
	(is-a USER)
	(role concrete)
	(single-slot Nombre_obj
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ejercicios_que_lo_cumplen
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write)))

(defclass Habito
	(is-a USER)
	(role concrete)
	(single-slot Nombre_hab
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Dieta
	(is-a USER)
	(role concrete)
	(single-slot Nombre_die
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))


;;;;;;;;;;;;;;		
;;;;;;;;;;;;;;INSTANCIAS
;;;;;;;;;;;;;;


(definstances instances 

; Fri May 13 13:46:40 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

([onto_Class10] of  Musculo

	(Lo_usan_ejercicios
		[onto_Class9]
		[onto_Class18]
		[onto_Class26]
		[onto_Class27]
		[onto_Class25]
		[onto_Class24]
		[onto_Class17]
		[onto_Class10008]
		[onto_Class20013]
		[onto_Class20014]
		[onto_Class20016]
		[onto_Class20017]
		[onto_Class20018]
		[onto_Class20021]
		[onto_Class20022]
		[onto_Class20023]
		[onto_Class20024]
		[onto_Class20029]
		[onto_Class20031]
		[onto_Class20032]
		[onto_Class20033]
		[onto_Class20034])
	(Nombre_musc "Brazos"))

([onto_Class10008] of  Ejercicio

	(Dificultad Poca)
	(Duracion 10)
	(Nombre_ej "Cardio")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class6]
		[onto_Class10009]
		[onto_Class10010])
	(Usa_musculos
		[onto_Class10015]
		[onto_Class10]
		[onto_Class11]
		[onto_Class13]))

([onto_Class10009] of  Objetivo

	(Ejercicios_que_lo_cumplen
		[onto_Class15]
		[onto_Class9]
		[onto_Class16]
		[onto_Class17]
		[onto_Class10008]
		[onto_Class20011]
		[onto_Class20012]
		[onto_Class20013]
		[onto_Class20014]
		[onto_Class20015]
		[onto_Class20017]
		[onto_Class20018]
		[onto_Class20019]
		[onto_Class20021]
		[onto_Class20023]
		[onto_Class20022]
		[onto_Class20024]
		[onto_Class20025]
		[onto_Class22]
		[onto_Class20029]
		[onto_Class20031]
		[onto_Class20032]
		[onto_Class20033]
		[onto_Class14]
		[onto_Class20034])
	(Nombre_obj "Mantenimiento"))

([onto_Class10010] of  Objetivo

	(Ejercicios_que_lo_cumplen
		[onto_Class20]
		[onto_Class19]
		[onto_Class10008]
		[onto_Class20020]
		[onto_Class20021]
		[onto_Class20023]
		[onto_Class20022]
		[onto_Class20024]
		[onto_Class22]
		[onto_Class20026]
		[onto_Class20027]
		[onto_Class20028]
		[onto_Class20029]
		[onto_Class20032])
	(Nombre_obj "Flexibilidad"))

([onto_Class10011] of  Objetivo

	(Ejercicios_que_lo_cumplen
		[onto_Class15]
		[onto_Class17]
		[onto_Class16]
		[onto_Class10008]
		[onto_Class20014]
		[onto_Class20015]
		[onto_Class20027]
		[onto_Class20029]
		[onto_Class20030]
		[onto_Class20031]
		[onto_Class20032]
		[onto_Class20034])
	(Nombre_obj "Equilibrio"))

([onto_Class10013] of  Musculo

	(Lo_usan_ejercicios
		[onto_Class17]
		[onto_Class20020])
	(Nombre_musc "Cuello"))

([onto_Class10015] of  Musculo

	(Lo_usan_ejercicios
		[onto_Class15]
		[onto_Class17]
		[onto_Class16]
		[onto_Class10008]
		[onto_Class20011]
		[onto_Class20012]
		[onto_Class20034])
	(Nombre_musc "Corazon"))

([onto_Class11] of  Musculo

	(Lo_usan_ejercicios
		[onto_Class20]
		[onto_Class19]
		[onto_Class15]
		[onto_Class22]
		[onto_Class17]
		[onto_Class16]
		[onto_Class10008]
		[onto_Class20011]
		[onto_Class20012]
		[onto_Class20013]
		[onto_Class20014]
		[onto_Class20015]
		[onto_Class20019]
		[onto_Class20027]
		[onto_Class20028]
		[onto_Class20029]
		[onto_Class20030]
		[onto_Class20031]
		[onto_Class20032]
		[onto_Class20034]
		[onto_Class20025])
	(Nombre_musc "Piernas"))

([onto_Class13] of  Musculo

	(Lo_usan_ejercicios
		[onto_Class14]
		[onto_Class21]
		[onto_Class23]
		[onto_Class22]
		[onto_Class17]
		[onto_Class10008]
		[onto_Class20017]
		[onto_Class20024]
		[onto_Class20029]
		[onto_Class20031]
		[onto_Class20033]
		[onto_Class20034])
	(Nombre_musc "Tronco"))

([onto_Class14] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Crunch")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class7]
		[onto_Class5])
	(Usa_musculos [onto_Class13]))

([onto_Class15] of  Ejercicio

	(Dificultad Poca)
	(Duracion 30)
	(Nombre_ej "Carrera suave")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class6]
		[onto_Class10009])
	(Usa_musculos
		[onto_Class10015]
		[onto_Class11]))

([onto_Class16] of  Ejercicio

	(Dificultad Mucha)
	(Duracion 60)
	(Nombre_ej "Maraton")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class6]
		[onto_Class10009])
	(Usa_musculos
		[onto_Class10015]
		[onto_Class11]))

([onto_Class17] of  Ejercicio

	(Dificultad Media)
	(Duracion 30)
	(Nombre_ej "Saltar a la comba")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class6]
		[onto_Class10009])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10015]
		[onto_Class10]
		[onto_Class10013]
		[onto_Class11]
		[onto_Class13]))

([onto_Class18] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Flexiones de biceps")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class19] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Sentadillas")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class6]
		[onto_Class10010]
		[onto_Class7])
	(Usa_musculos [onto_Class11]))

([onto_Class20] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Puente isometrico")
	(Objetivos_que_cumple
		[onto_Class10010]
		[onto_Class7])
	(Usa_musculos [onto_Class11]))

([onto_Class20011] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Bicicleta suave")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class6]
		[onto_Class10009])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10015]
		[onto_Class11]))

([onto_Class20012] of  Ejercicio

	(Dificultad Media)
	(Duracion 40)
	(Nombre_ej "Bicicleta duro")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class6]
		[onto_Class10009])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10015]
		[onto_Class11]))

([onto_Class20013] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Peso muerto con mancuernas")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10]
		[onto_Class11]))

([onto_Class20014] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Mountain climbers")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class6]
		[onto_Class10009])
	(Usa_musculos
		[onto_Class10]
		[onto_Class11]))

([onto_Class20015] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Elevaciones de rodilla")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class6]
		[onto_Class10009])
	(Usa_musculos [onto_Class11]))

([onto_Class20016] of  Ejercicio

	(Dificultad Mucha)
	(Duracion 20)
	(Nombre_ej "Press de banca")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class20017] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Pectoral contractor")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10]
		[onto_Class13]))

([onto_Class20018] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Press sentado anterior")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class20019] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Extension de piernas")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class11]))

([onto_Class20020] of  Ejercicio

	(Dificultad Poca)
	(Duracion 15)
	(Nombre_ej "Traccion cervical")
	(Objetivos_que_cumple [onto_Class10010])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10013]))

([onto_Class20021] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Presion de palmas detras de la espalda")
	(Objetivos_que_cumple
		[onto_Class10009]
		[onto_Class10010])
	(Usa_musculos [onto_Class10]))

([onto_Class20022] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Rotacion interna de antebrazo")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class10010]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class20023] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Rotacion externa de antebrazo")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class10010]
		[onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class20024] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Expnsion de pecho")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class10010]
		[onto_Class7])
	(Usa_aparato FALSE)
	(Usa_musculos
		[onto_Class10]
		[onto_Class13]))

([onto_Class20025] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Tijera lateral")
	(Objetivos_que_cumple
		[onto_Class10009]
		[onto_Class6]
		[onto_Class7])
	(Usa_musculos [onto_Class11]))

([onto_Class20026] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Estiramiento de espalda")
	(Objetivos_que_cumple [onto_Class10010]))

([onto_Class20027] of  Ejercicio

	(Dificultad Poca)
	(Duracion 30)
	(Nombre_ej "Flor de loto")
	(Objetivos_que_cumple
		[onto_Class10011]
		[onto_Class10010])
	(Usa_musculos [onto_Class11]))

([onto_Class20028] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Estiramiento de cuadriceps de pie")
	(Objetivos_que_cumple [onto_Class10010])
	(Usa_musculos [onto_Class11]))

([onto_Class20029] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Desplazamiento de peso")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class7]
		[onto_Class10010]
		[onto_Class10011]
		[onto_Class10009]
		[onto_Class5])
	(Usa_musculos
		[onto_Class10]
		[onto_Class11]
		[onto_Class13]))

([onto_Class20030] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Equilibrio sencillo en una pierna")
	(Objetivos_que_cumple [onto_Class10011])
	(Usa_musculos [onto_Class11]))

([onto_Class20031] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Bote de balon medicinal")
	(Objetivos_que_cumple
		[onto_Class7]
		[onto_Class10009]
		[onto_Class10011])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10]
		[onto_Class11]
		[onto_Class13]))

([onto_Class20032] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Sentadillas con balon medicinal")
	(Objetivos_que_cumple
		[onto_Class5]
		[onto_Class10011]
		[onto_Class10009]
		[onto_Class6]
		[onto_Class7]
		[onto_Class10010])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10]
		[onto_Class11]))

([onto_Class20033] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Abdominales con balon medicinal")
	(Objetivos_que_cumple
		[onto_Class7]
		[onto_Class5]
		[onto_Class6]
		[onto_Class10009])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class13]
		[onto_Class10]))

([onto_Class20034] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Pista de obstaculos")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class5]
		[onto_Class10011]
		[onto_Class10009])
	(Usa_aparato TRUE)
	(Usa_musculos
		[onto_Class10]
		[onto_Class10015]
		[onto_Class11]
		[onto_Class13]))

([onto_Class20035] of  Habito

	(Nombre_hab "Ir y volver andando al trabajo/escuela"))

([onto_Class20036] of  Habito

	(Nombre_hab "Pasear a algun animal domestico"))

([onto_Class20037] of  Habito

	(Nombre_hab "Limpiar la casa"))

([onto_Class20038] of  Habito

	(Nombre_hab "Hacer la colada"))

([onto_Class20039] of  Habito

	(Nombre_hab "Paseo"))

([onto_Class20040] of  Habito

	(Nombre_hab "Hacer la compra"))

([onto_Class20041] of  Dieta

	(Nombre_die "Exceso de sal"))

([onto_Class20042] of  Dieta

	(Nombre_die "Exceso de azucar"))

([onto_Class20043] of  Dieta

	(Nombre_die "Demasiadas calorias"))

([onto_Class20044] of  Dieta

	(Nombre_die "Poca fruta y verduras"))

([onto_Class20045] of  Dieta

	(Nombre_die "Picar entre horas"))

([onto_Class20046] of  Dieta

	(Nombre_die "Demasiada comida basura"))

([onto_Class21] of  Ejercicio

	(Dificultad Media)
	(Duracion 10)
	(Nombre_ej "Elevacion de piernas al pecho")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_musculos [onto_Class13]))

([onto_Class22] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Tijera vertical")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class10010]
		[onto_Class7])
	(Usa_musculos
		[onto_Class11]
		[onto_Class13]))

([onto_Class23] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Twist ruso")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class13]))

([onto_Class24] of  Ejercicio

	(Dificultad Media)
	(Duracion 20)
	(Nombre_ej "Fondos")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_musculos [onto_Class10]))

([onto_Class25] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Jalones en polea")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class26] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Flexiones de muneca")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_aparato TRUE)
	(Usa_musculos [onto_Class10]))

([onto_Class27] of  Ejercicio

	(Dificultad Poca)
	(Duracion 20)
	(Nombre_ej "Patada de burro")
	(Objetivos_que_cumple [onto_Class7])
	(Usa_musculos [onto_Class10]))

([onto_Class5] of  Objetivo

	(Ejercicios_que_lo_cumplen
		[onto_Class15]
		[onto_Class16]
		[onto_Class19]
		[onto_Class17]
		[onto_Class10008]
		[onto_Class20011]
		[onto_Class20012]
		[onto_Class20014]
		[onto_Class20015]
		[onto_Class20029]
		[onto_Class20032]
		[onto_Class20033]
		[onto_Class14]
		[onto_Class20034])
	(Nombre_obj "Bajar peso"))

([onto_Class6] of  Objetivo

	(Ejercicios_que_lo_cumplen
		[onto_Class15]
		[onto_Class9]
		[onto_Class16]
		[onto_Class17]
		[onto_Class19]
		[onto_Class18]
		[onto_Class10008]
		[onto_Class20011]
		[onto_Class20012]
		[onto_Class20013]
		[onto_Class20014]
		[onto_Class20015]
		[onto_Class20017]
		[onto_Class20018]
		[onto_Class20019]
		[onto_Class20023]
		[onto_Class20022]
		[onto_Class20024]
		[onto_Class20025]
		[onto_Class22]
		[onto_Class20029]
		[onto_Class20032]
		[onto_Class20033]
		[onto_Class14]
		[onto_Class20034])
	(Nombre_obj "Ponerse en forma"))

([onto_Class7] of  Objetivo

	(Ejercicios_que_lo_cumplen
		[onto_Class25]
		[onto_Class21]
		[onto_Class9]
		[onto_Class26]
		[onto_Class27]
		[onto_Class20]
		[onto_Class19]
		[onto_Class23]
		[onto_Class18]
		[onto_Class20013]
		[onto_Class20016]
		[onto_Class20017]
		[onto_Class20018]
		[onto_Class20019]
		[onto_Class20023]
		[onto_Class20022]
		[onto_Class20024]
		[onto_Class20025]
		[onto_Class22]
		[onto_Class20029]
		[onto_Class20031]
		[onto_Class20032]
		[onto_Class20033]
		[onto_Class14])
	(Nombre_obj "Muscular"))

([onto_Class9] of  Ejercicio

	(Dificultad Media)
	(Duracion 10)
	(Nombre_ej "Flexiones")
	(Objetivos_que_cumple
		[onto_Class6]
		[onto_Class10009]
		[onto_Class7])
	(Usa_musculos [onto_Class10]))

)

;;;**********************
;;;*       CLASES       *
;;;**********************

(defclass Recomendacion 
	(is-a USER)
	(role concrete)
	(slot ejercicio
		(type INSTANCE)
		(create-accessor read-write))
	(slot puntuacion
		(type INTEGER)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
)

;;; Se crea una clase para cada uno de los dias de la recomendacion
(defclass Dia
	(is-a USER)
	(role concrete)
	(multislot recomendaciones
		(type INSTANCE)
		(create-accessor read-write))
	(slot tiempo-ocupado
		(type INTEGER)
		(create-accessor read-write))
	(slot tiempo-maximo
		(type INTEGER)
		(create-accessor read-write))
)

;;;*************************
;;;*        MODULOS        *
;;;*************************

;;; Modulo principal de utilidades, indicamos que exportamos todo
(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopila-datos
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule recopila-restr
	(import MAIN ?ALL)
	(import recopila-datos deftemplate ?ALL)
	(export ?ALL)
)
;;; Modulo de filtrado y procesado
(defmodule procesado
	(import MAIN ?ALL)
	(import recopila-datos deftemplate ?ALL)
	(import recopila-restr deftemplate ?ALL)
	(export ?ALL)
)

;;; Modulo de generacion de soluciones
(defmodule generacion
	(import MAIN ?ALL)
	(export ?ALL)
)


;;; Modulo de presentacion de resultados
(defmodule presentacion
	(import MAIN ?ALL)
	(export ?ALL)
)

;;;***************
;;;*  FUNCIONES  *
;;;***************

;;; Funcion que retorna el elemento con puntuacion maxima
(deffunction MAIN::maximo-puntuacion ($?lista)
	(bind ?maximo -1)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		(bind ?curr-ej (send ?curr-rec get-ejercicio))
		(bind ?curr-punt (send ?curr-rec get-puntuacion))
		(if (> ?curr-punt ?maximo)
			then 
			(bind ?maximo ?curr-punt)
			(bind ?elemento ?curr-rec)
		)
	)
	?elemento
)

;;; Funcion para hacer una pregunta con respuesta cualquiera
(deffunction MAIN::pregunta-general (?pregunta)
    (format t "%s " ?pregunta)
	(bind ?respuesta (read))
	(while (not (lexemep ?respuesta)) do
		(format t "%s " ?pregunta)
		(bind ?respuesta (read))
    )
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta general con una serie de respuestas admitidas
(deffunction MAIN::pregunta-opciones (?question $?allowed-values)
   (format t "%s "?question)
   (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	)
   (printout t ": ")
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (format t "%s "?question)
	  (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	  )
	  (printout t ": ")
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer
)

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles) 
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los números separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros) 
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then 
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        ) 
    )
    ?lista
)

;;; Funcion para hacer una pregunta de tipo si/no
(deffunction MAIN::pregunta-si-no (?question)
   (bind ?response (pregunta-opciones ?question si no))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE 
       else FALSE)
)

;;;***************
;;;*  TEMPLATES  *
;;;***************

(deftemplate MAIN::Usuario
	(slot nombre (type STRING))
	(slot sexo (type SYMBOL) (default desconocido))
	(slot edad (type INTEGER) (default -1))
	(slot altura (type INTEGER) (default -1))
	(slot peso (type INTEGER) (default -1))
	(slot IMC (type FLOAT) (default 0.0))
	(slot tiempo (type INTEGER) (default -1))
	(slot pulsaciones (type INTEGER) (default -1))
	(slot presion (type INTEGER) (default -1))
	(slot dificultad (type SYMBOL) (default desconocido))
)

(deftemplate MAIN::restricciones
	(multislot lesion-en (type INSTANCE))
	(multislot objetivos (type INSTANCE))
	(multislot dieta (type INSTANCE))
	(multislot habitos (type INSTANCE))
	(multislot tiempos (type INTEGER))
)

;;; Template para una lista de recomendaciones sin orden
(deftemplate MAIN::lista-rec-desordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para una lista de recomendaciones con orden
(deftemplate MAIN::lista-rec-ordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para la lista de los dias de la recomendacion
(deftemplate MAIN::lista-dias
	(multislot dias (type INSTANCE))
)

;;; Declaracion de messages ---------------------------

;; Imprime los datos de un contenido

(defmessage-handler MAIN::Ejercicio imprimir ()
	(format t "Nombre ejercicio: %s %n" ?self:Nombre_ej)
	(printout t crlf)
	(format t "Duración: %d" ?self:Duracion)
	(printout t crlf)
)

(defmessage-handler MAIN::Recomendacion imprimir ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:ejercicio imprimir))
	(printout t crlf)
	(format t "Nivel de recomendación: %d %n" ?self:puntuacion)
	(printout t "Justificación: " crlf)
	(progn$ (?curr-just ?self:justificaciones)
		(printout t ?curr-just crlf)
	)
	(printout t crlf)
	(printout t "-----------------------------------" crlf)
)

(defmessage-handler MAIN::Dia imprimir ()
	(printout t "============================================" crlf)
	(printout t (instance-name ?self) crlf)
	(bind $?recs ?self:recomendaciones)
	(progn$ (?curr-rec $?recs)
		(printout t (send ?curr-rec imprimir))
	)
	(printout t "============================================" crlf)
)
	

;;; Fin declaracion de messages -----------------------

;;;***************
;;;* QUERY RULES *
;;;***************

;;; VARIABLE GLOBAL PARA "PUNTOS DE INSALUD"

(defglobal ?*pointdif* = 0)

;;; Modulo recopilacion de datos ---------------------------------------------------

(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 100))
	=>
	(printout t "===========================================================" crlf)
  	(printout t "=         Sistema de recomendacion de ejercicios          =" crlf)
	(printout t "===========================================================" crlf)
  	(printout t crlf)  	
	(printout t "Bienvenido, elija las respuestas que crea adecuadas a las siguientes preguntas." crlf)
	(printout t crlf)
	(assert (tiempo-set FALSE))
	
	(focus recopila-datos)
)

(defrule recopila-datos::determine-nombre "El usuario entra el nombre"
	(not (Usuario))
	=>
	(bind ?nombre (pregunta-general "Como se llama? ")) ;;Creamos el usuario con nombre ?nombre 
	(assert (Usuario (nombre ?nombre)))
	(assert (ej-simp-realizados FALSE))
)

(defrule recopila-datos::determine-sexo "El usuario entra el sexo"
	(declare (salience 10))
	?u <- (Usuario (sexo desconocido))
	=>
	(bind ?s (pregunta-opciones "Es hombre o mujer?" hombre mujer))
	(modify ?u (sexo ?s))
)

(defrule recopila-datos::determine-edad "El usuario entra la edad"
	?u <- (Usuario (edad ?edad))
	(test (< ?edad 0))
	=>
	(bind ?e (pregunta-numerica "Que edad tiene? " 1 110))
	(bind ?*pointdif* ?e)
	(modify ?u (edad ?e))
)
   
(defrule recopila-datos::determine-altura "El usuario entra su altura"
	?u <- (Usuario (altura ?altura))
	(test (< ?altura 0))
	=>
	(bind ?a (pregunta-numerica "Indica tu altura (cm)" 1 250))
	(modify ?u (altura ?a))
)

(defrule recopila-datos::determine-peso "El usuario entra su peso"
	?u <- (Usuario (peso ?peso))
	(test (< ?peso 0))
	=>
	(bind ?p (pregunta-numerica "Indica tu peso (kg)" 1 200))
   	(modify ?u (peso ?p))
)

(defrule recopila-datos::determine-tiempo "El usuario entra su tiempo libre"
	?u <- (Usuario (tiempo ?tiempo))
	?hecho <- (tiempo-set FALSE)
	=>
	(retract ?hecho)
	(assert (tiempo-set TRUE))
	(bind ?t (pregunta-numerica "Indica tu tiempo libre diario (min)" 30 180))
   	(modify ?u (tiempo ?t))
	(assert (ej-simp-realizados ask))
)

(defrule recopila-datos::determine-pulsaciones "El usuario entra las pulsaciones tras un poco de esfuerzo"
	?u <- (Usuario (pulsaciones ?puls))
	(ej-simp-realizados ask)
	(test (< ?puls 0))
	=>
	(printout t "Responde a estas preguntas tras haber realizado unos pequeños ejercicios" crlf)
	(bind ?p (pregunta-numerica "Indica tus pulsaciones por minuto" 60 220))
   	(modify ?u (pulsaciones ?p))
)

(defrule recopila-datos::determine-presion "El usuario entra la presion sanguinea"
	?u <- (Usuario (presion ?pres))
	?hecho <-(ej-simp-realizados ask)
	(test (< ?pres 0))
	=>
	(bind ?p (pregunta-numerica "Indica tu presion sanguinea (sistolica)" 80 200))
	(modify ?u (presion ?p))
	(retract ?hecho)
	(assert (ej-simp-realizados TRUE))
)

(defrule recopila-datos::pasar-a-restricciones "Pasa a la recopilacion de restricciones"
	(declare (salience 10))
	(tiempo-set TRUE)
	(ej-simp-realizados TRUE)
	?u <- (Usuario (edad ?e) (sexo ~desconocido) (peso ?p) (altura ?a) (tiempo ?t) (pulsaciones ?puls) (presion ?pres))
	(test (and (> ?e 0) (> ?p 0) (> ?a 0) (> ?t 0) (> ?puls 0) (> ?pres 0)))
	=>
	(focus recopila-restr)
)
   
(deffacts recopila-restr::hechos-iniciales "Establece hechos para poder recopilar informacion y crear restricciones"
	(tiene-lesion ask)
	(pregunta-dieta ask)
	(pregunta-habitos ask)
	(pregunta-objetivos ask)
	(pregunta-maquinas ask)
	(restricciones )
)

(defrule recopila-restr::establecer-lesion "Pregunta al usuario si tiene alguna lesion"
	?hecho <- (tiene-lesion ask)
	=>
	(bind ?respuesta (pregunta-si-no "Tiene alguna lesion? "))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (tiene-lesion choose))
		else 
		(assert (tiene-lesion FALSE))
	)
)
   
(defrule recopila-restr::preguntar-lesiones "Establece las lesiones"
	?hecho <- (tiene-lesion choose)
	?rest <- (restricciones)
	=>
	(bind $?musc (find-all-instances ((?inst Musculo)) TRUE))
	(bind $?nom-musc (create$ ))
	(loop-for-count (?i 1 (length$ $?musc)) do
		(bind ?curr-musc (nth$ ?i ?musc))
		(bind ?curr-nom (send ?curr-musc get-Nombre_musc))
		(bind $?nom-musc(insert$ $?nom-musc (+ (length$ $?nom-musc) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja si tiene algun problema en alguno de estos musculos: " $?nom-musc))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-musc (nth$ ?curr-index ?musc))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-musc))
	)
	
	(retract ?hecho)
	(assert (tiene-lesion TRUE))
	(modify ?rest (lesion-en $?respuesta))
)

(defrule recopila-restr::preguntar-dieta "Establece problemas de dieta"
	?hecho <- (pregunta-dieta ask)
	?rest <- (restricciones)
	=>
	(bind $?diet (find-all-instances ((?inst Dieta)) TRUE))
	(bind $?nom-diet (create$ ))
	(loop-for-count (?i 1 (length$ $?diet)) do
		(bind ?curr-diet (nth$ ?i ?diet))
		(bind ?curr-nom (send ?curr-diet get-Nombre_die))
		(bind $?nom-diet(insert$ $?nom-diet (+ (length$ $?nom-diet) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja cuales de estos habitos relacionados con la dieta realiza: " $?nom-diet))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-diet (nth$ ?curr-index ?diet))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-diet))
	)
	(retract ?hecho)
	(assert (pregunta-dieta TRUE))
	(modify ?rest (dieta $?respuesta))
)

(defrule recopila-restr::preguntar-objetivos "Establece objetivos"
	?hecho <- (pregunta-objetivos ask)
	?rest <- (restricciones)
	=>
	(bind $?obj (find-all-instances ((?inst Objetivo)) TRUE))
	(bind $?nom-obj (create$ ))
	(loop-for-count (?i 1 (length$ $?obj)) do
		(bind ?curr-obj (nth$ ?i ?obj))
		(bind ?curr-nom (send ?curr-obj get-Nombre_obj))
		(bind $?nom-obj(insert$ $?nom-obj (+ (length$ $?nom-obj) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja cuales de estas opciones se adapta a lo que tiene como objetivo mejorar o cumplir: " $?nom-obj))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-obj (nth$ ?curr-index ?obj))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-obj))
	)
	(retract ?hecho)
	(assert (pregunta-objetivos TRUE))
	(modify ?rest (objetivos $?respuesta))
)

(defrule recopila-restr::preguntar-habitos "Establece habitos"
	?hecho <- (pregunta-habitos ask)
	?rest <- (restricciones)
	=>
	(bind $?hab (find-all-instances ((?inst Habito)) TRUE))
	(bind $?nom-hab (create$ ))
	(loop-for-count (?i 1 (length$ $?hab)) do
		(bind ?curr-hab (nth$ ?i ?hab))
		(bind ?curr-nom (send ?curr-hab get-Nombre_hab))
		(bind $?nom-hab(insert$ $?nom-hab (+ (length$ $?nom-hab) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja cuales de estos habitos realiza usualmente (es decir, les dedica al menos 30 minutos semanales): " $?nom-hab))
	(printout t "Especifique cuanto tiempo dedica semanalmente a cada uno de los habitos (min):" crlf)
	
	(bind $?respuesta (create$ ))
	(bind $?tiempos (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-hab (nth$ ?curr-index ?hab))
		(bind ?tiempo (pregunta-numerica (send ?curr-hab get-Nombre_hab) 30 300))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-hab))
		(bind $?tiempos(insert$ $?tiempos (+ (length$ $?tiempos) 1) ?tiempo))
	)
	(retract ?hecho)
	(assert (pregunta-habitos TRUE))
	(modify ?rest (habitos $?respuesta) (tiempos $?tiempos))
)

(defrule recopila-restr::establecer-maquinas "Pregunta al usuario si tiene preferencia por el uso de maquinas o aparatos"
	?hecho <- (pregunta-maquinas ask)
	=>
	(bind ?respuesta (pregunta-si-no "Preferiria usar maquinas y aparatos para hacer sus ejercicios? "))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (quiere-maquinas TRUE))
		else 
		(assert (quiere-maquinas FALSE))
	)
)

(defrule recopila-restr::pasar_modulo_procesado "Pasa al modulo de procesado de datos"
	(declare (salience -1))
	?h1 <- (tiene-lesion TRUE|FALSE)
	?h2 <- (pregunta-dieta TRUE)
	?h3 <- (pregunta-objetivos TRUE)
	?h4 <- (pregunta-habitos TRUE)
	?h5 <- (quiere-maquinas TRUE|FALSE)
	=>
	(printout t "Procesando datos..." crlf)
	(assert (ejercicios-listar TRUE))
	(focus procesado)
)

;;; Modulo procesado de datos ---------------------------------------------------

(defrule procesado::anadir-ejercicios "Se añaden todos los ejercicios"
	(declare (salience 20))
	?hecho <- (ejercicios-listar TRUE)
	=>
	(bind $?lista (find-all-instances ((?inst Ejercicio)) TRUE))
	(progn$ (?curr-ej ?lista)
		(make-instance (gensym) of Recomendacion (ejercicio ?curr-ej))
	)
	(retract ?hecho)
	(assert (calcular-IMC ))
)

(defrule procesado::aux-lesiones "Crea hechos para poder procesar las lesiones"
	(declare (salience 10))
	(restricciones (lesion-en $?lesmusc))
	?hecho <- (tiene-lesion ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)then 
		(bind ?*pointdif* (+ ?*pointdif* 200))
		(progn$ (?curr-musc $?lesmusc)
			(assert (musculo-lesionado ?curr-musc))
		)
	)
)

(defrule procesado::aux-diet "Crea hechos para poder procesar la dieta"
	(declare (salience 10))
	(restricciones (dieta $?d))
	=>
	(progn$ (?curr-d $?d)
		(assert (problema-dieta ?curr-d))
	)
)

(defrule procesado::aux-obj "Crea hechos para poder procesar los objetivos"
	(declare (salience 10))
	(restricciones (objetivos $?o))
	=>
	(progn$ (?curr-o $?o)
		(assert (tiene-objetivo ?curr-o))
	)
)

(defrule procesado::aux-hab "Crea hechos para poder procesar los habitos"
	(declare (salience 10))
	(restricciones (habitos $?h) (tiempos $?t))
	=>
	(bind ?index 1)
	(progn$ (?curr-h $?h)
		(bind ?curr-tiempo (nth$ ?index ?t))
		(assert (realiza-habito ?curr-h ?curr-tiempo))
		(+ ?index 1)
	)
)


(defrule procesado::calculaIMC "Calculamos el IMC aproximado"
	?hecho <- (calcular-IMC )
	?u <- (Usuario (altura ?altura) (peso ?peso))
	=>
	(bind ?IMC (/ ?peso (* (/ ?altura 100) (/ ?altura 100))))
	(modify ?u (IMC ?IMC))
	(retract ?hecho)
	(assert (punt-IMC ))
	(assert (punt-pres ))
	(assert (punt-puls ))
)

(defrule procesado::puntuahabitos "Calculamos puntuacion de habitos"
	?hecho <- (realiza-habito ?hab ?htiempo)
	=>
	(- ?*pointdif* (- ?htiempo 20))
	(retract ?hecho)
)

(defrule procesado::puntuadieta "Calculamos puntuacion de los problemas de dieta"
	?hecho <- (problema-dieta ?die)
	=>
	(+ ?*pointdif* 20)
	(retract ?hecho)
)

(defrule procesado::puntuaIMC "Calculamos puntuacion de IMC"
	?hecho <- (punt-IMC )
	(Usuario (IMC ?IMC))
	=>
	(if (> ?IMC 30)
		then 
		(bind ?*pointdif* (+ ?*pointdif* 200))
		else 
		(if (> ?IMC 25)
			then
			(bind ?*pointdif* (+ ?*pointdif* 100))
			else
			(if (< ?IMC 18)
				then
				(bind ?*pointdif* (+ ?*pointdif* 50))
			)
		)
	)
	(retract ?hecho)
)

(defrule procesado::puntuapresion "Calculamos puntuacion de presion"
	?hecho <- (punt-pres )
	(Usuario (presion ?presion))
	=>
	(if (> ?presion 140)
		then 
		(bind ?*pointdif* (+ ?*pointdif* 200))
		else 
		(if (> ?presion 120)
			then
			(bind ?*pointdif* (+ ?*pointdif* 100))
		)
	)
	(retract ?hecho)
)

(defrule procesado::puntuabpm "Calculamos puntuacion de latidos"
	?hecho <- (punt-puls )
	(Usuario (pulsaciones ?puls))
	=>
	(if (> ?puls 180)
		then 
		(bind ?*pointdif* (+ ?*pointdif* 100))
	)
	(retract ?hecho)
)

(defrule procesado::cambiatiempo "Calculamos como hemos de cambiar el tiempo de las sesiones y su dificultad segun el estado fisico del usuario"
	(not (calcular-IMC ))
	(not (punt-IMC ))
	(not (punt-pres ))
	(not (punt-puls ))
	?u <- (Usuario (tiempo ?t) (dificultad desconocido))
	=>
	(if (< ?*pointdif* 150)
		then
		(modify ?u (dificultad Mucha))
		else
		(if (< ?*pointdif* 200)
			then
			(modify ?u (dificultad Media))
			else 
			(if (< ?*pointdif* 250)
				then 
				(modify ?u (dificultad Media))
				(if (> ?t 90)
					then 
					(modify ?u (tiempo 90))
				)
				else 
				(if (< ?*pointdif* 300)
					then
					(modify ?u (dificultad Poca))
					(if (> ?t 90)
						then 
						(modify ?u (tiempo 60))
					)
					else 
					(modify ?u (dificultad Poca))
					(if (> ?t 60)
						then 
						(modify ?u (tiempo 30))
					)
				)
			)
		)
	)
)

(defrule procesado::descartar-lesiones "Se descartan ejercicios que el usuario no puede realizar"
	(musculo-lesionado ?musc)
	?obj <- (object (is-a Recomendacion) (ejercicio ?eja))
	(test (neq (member$ ?musc (send ?eja get-Usa_musculos)) FALSE))
	=>
	(send ?obj delete)
)

(defrule procesado::valorar-dificultad "Se mejora la puntuacion de los ejercicios con una dificultad adecuada"
	?u <- (Usuario (dificultad ?dif))
	?ejer <- (object (is-a Ejercicio) (Dificultad ?dif_ej))
	?rec <- (object (is-a Recomendacion) (ejercicio ?ej) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?ejer) (instance-name ?ej)))
	(not (valorado-ejercicio-dificultad ?ej))
	=>
	(if (eq Poca ?dif)
		then
		(if (eq Poca ?dif_ej)
			then
			(bind ?p (+ 100 ?p))
			(bind ?text (str-cat "Tiene dificultad recomendada Poca -> +100"))
			(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
			(send ?rec put-puntuacion ?p)
			(send ?rec put-justificaciones $?just)
		)
		else
		(if (eq Media ?dif)
			then
			(if (eq Media ?dif_ej)
				then
				(bind ?p (+ 100 ?p))
				(bind ?text (str-cat "Tiene dificultad recomendada Media -> +100"))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
				(send ?rec put-puntuacion ?p)
				(send ?rec put-justificaciones $?just)
				else
				(if (eq Poca ?dif_ej)
					then
					(bind ?p (+ 75 ?p))
					(bind ?text (str-cat "Tiene dificultad menor a la recomendada Poca -> +75"))
					(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
					(send ?rec put-puntuacion ?p)
					(send ?rec put-justificaciones $?just)
				)
			)
			else
			(if (eq Mucha ?dif)
				then
				(bind ?p (+ 100 ?p))
				(bind ?text (str-cat "Tiene dificultad recomendada Mucha -> +100"))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
				(send ?rec put-puntuacion ?p)
				(send ?rec put-justificaciones $?just)
				else
				(bind ?p (+ 75 ?p))
				(bind ?text (str-cat "Tiene dificultad menor a la recomendada " ?dif_ej " -> +75"))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
				(send ?rec put-puntuacion ?p)
				(send ?rec put-justificaciones $?just)
			)
		)
	)
	(assert (valorado-ejercicio-dificultad ?ej))
)

(defrule procesado::valorar-maquinas "Se mejora la puntuacion de los ejercicios que usan o no maquinas, segun haya elegido el usuario"
	?hecho <- (quiere-maquinas ?maq)
	?rec <- (object (is-a Recomendacion) (ejercicio ?ej) (puntuacion ?p) (justificaciones $?just))
	(not (valorado-ejercicio-maquinas ?ej))
	=>
	(if (eq ?maq (send ?ej get-Usa_aparato))
		then
		(bind ?p (+ 50 ?p))
		(bind ?text (str-cat "Concuerda con las preferencias del usuario con respecto al uso de maquinas y aparatos -> +50"))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
		(send ?rec put-puntuacion ?p)
		(send ?rec put-justificaciones $?just)
	)
	(assert (valorado-ejercicio-maquinas ?ej))
)

(defrule procesado::valorar-objetivos "Se mejora la puntuacion de los ejercicios que cumplen los objetivos que quiere el usuario"
	?hecho <- (tiene-objetivo ?obj)
	?ejer <- (object (is-a Ejercicio) (Objetivos_que_cumple $?objs))
	(test (member ?obj $?objs))
	?rec <- (object (is-a Recomendacion) (ejercicio ?ej) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?ejer) (instance-name ?ej)))
	(not (valorado-ejercicio-objetivo ?ej ?obj))
	=>
	(bind ?p (+ 150 ?p))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Cumple el objetivo " (send ?obj get-Nombre_obj) " -> +150"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-ejercicio-objetivo ?ej ?obj))
)

(defrule procesado::pasar-a-generacion "Pasa al modulo de generacion de respuestas"
	(declare(salience -10))
	=>
	(printout t "Generando respuesta..." crlf)
	(focus generacion)
)

;;; Módulo de generacion de respuestas -------------------------------------------------
(defrule generacion::crea-lista-recomendaciones "Se crea una lista de recomendaciones para ordenarlas"
	(not (lista-rec-desordenada))
	=>
	(assert (lista-rec-desordenada))
)

(defrule generacion::anyadir-recomendacion "Anyade una recomendacion a la lista de recomendaciones"
	(declare (salience 10))
	?rec <- (object (is-a Recomendacion))
	?hecho <- (lista-rec-desordenada (recomendaciones $?lista))
	(test (not (member$ ?rec $?lista)))
	=>
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) ?rec))
	(modify ?hecho (recomendaciones $?lista))
)

(defrule generacion::crea-lista-ordenada "Se crea una lista ordenada de contenido"
	(not (lista-rec-ordenada))
	(lista-rec-desordenada (recomendaciones $?lista))
	=>
	;;; Hacemos una ordenacion buscando maximo a cada paso (lento per simple de implementar)
	(bind $?resultado (create$ ))
	(while (and (not (eq (length$ $?lista) 0)) (< (length$ $?resultado) 21))  do
		(bind ?curr-rec (maximo-puntuacion $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(assert (lista-rec-ordenada (recomendaciones $?resultado)))
)

(defrule generacion::generaHorario "Generacion horario"
	(declare (salience -10))
	(lista-rec-ordenada (recomendaciones $?recs))
	(Usuario (tiempo ?tiempo))
	(not (lista-dias))
	=>
	(bind $?lista (create$ ))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia1 of Dia (tiempo-maximo ?tiempo))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia2 of Dia (tiempo-maximo ?tiempo))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia3 of Dia (tiempo-maximo ?tiempo))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia4 of Dia (tiempo-maximo ?tiempo))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia5 of Dia (tiempo-maximo ?tiempo))))
	(bind ?i 1)
	(while (and (> (length$ $?recs) 0) (< ?i 6)) do
		(bind ?dia (nth$ ?i $?lista))
		(bind $?recs-dia (create$ ))
		(bind ?t-max (send ?dia get-tiempo-maximo))
		(bind ?t-ocu 0)
		(bind ?try 1)
		(bind ?asignados 0)
		(while (and (and (and(< ?t-ocu ?t-max) (< ?try 4)) (and (<= (length$ $?recs-dia) 2) (> (length$ $?recs) 0))) (< ?asignados 3)) do
			(bind ?rec (nth$ (random 1 (length$ $?recs)) $?recs))
			(bind ?cont (send ?rec get-ejercicio))
			(bind ?t (send ?cont get-Duracion))
			(if (< (+ ?t-ocu ?t) ?t-max) 
				then
					(bind ?t-ocu (+ ?t-ocu ?t))
					(bind ?try 1)
					(bind ?asignados (+ ?asignados 1))
					(bind ?recs-dia (insert$ $?recs-dia (+ (length$ $?recs-dia) 1) ?rec))
					(bind $?recs (delete-member$ $?recs ?rec))
				else
					(bind ?try (+ ?try 1))
			)
		)
		(send ?dia put-recomendaciones $?recs-dia)
		(bind ?i (+ ?i 1))
	)
	(assert (lista-dias (dias $?lista)))
)


(defrule generacion::pasar-a-presentacion "Se pasa al modulo de presentacion"
	(lista-dias)
	=>
	(focus presentacion)
)


;;; Modulo de presentacion de resultados ----------------------------------------------------
(defrule presentacion::mostrar-respuesta "Muestra el contenido escogido"
	(lista-dias (dias $?dias))
	(Usuario (nombre ?nombre))
	(not (final))
	=>
	(printout t crlf)
	(format t "%s, este es nuestro horario recomendado para usted. ¡Esperamos que lo disfrute!" ?nombre)
	(printout t crlf)
	(progn$ (?curr-dia $?dias)
		(printout t (send ?curr-dia imprimir))
	)
	(assert (final))
)


; ;;; Fin declaracion de reglas ------------------------------