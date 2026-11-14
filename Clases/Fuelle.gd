extends CharacterBody2D
class_name Fuelle

@export var potencia: int
@export var activo : bool
@export var animacion : AnimatedSprite2D
@export var area_empuje : CollisionShape2D #Para poder activarlo y desactivarlo

func activar():
	if activo == false:
		activo = true
		area_empuje.set_deferred("disabled", false) #Me obliga a usarlo para que no se buguee
		animacion.play('activo')


func ventilar(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'harina' and activo:
		personaje.velocidad_externa = -potencia*transform.y
