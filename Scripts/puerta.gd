extends Puerta

func _ready() -> void:
	animacion = $AnimatedSprite2D
	if abierta:
		animacion.play("abierta")
	else:
		animacion.play('cerrada')
