extends StaticBody2D
class_name Puerta

var abierta := false
var animacion : AnimatedSprite2D
@export var colisionador : CollisionShape2D #Para poder activarlo y desactivarlo

func activar():
	if abierta == false:
		abierta = true
		colisionador.set_deferred("disabled", true)
		animacion.play('abierta')
