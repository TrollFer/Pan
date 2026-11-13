extends CharacterBody2D
class_name Fuelle

@export var potencia: int


func ventilar(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'harina':
		personaje.velocidad_externa = -potencia*transform.y
