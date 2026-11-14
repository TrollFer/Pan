extends Fuelle

func _ready() -> void:
	if activo == true:
		animacion.play('activo')

func _on_zona_empuje_body_entered(body: Node2D) -> void:
	if body is Pancracio:
		ventilar(body)
