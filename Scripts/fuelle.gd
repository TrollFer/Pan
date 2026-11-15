extends Fuelle

@onready var sonido: AudioStreamPlayer2D = $Sonido



func _ready() -> void:
	if activo == true:
		animacion.play('activo')

func _on_zona_empuje_body_entered(body: Node2D) -> void:
	if body is Pancracio:
		if body.recurso_estado.nombre == 'harina' and activo == true:
			sonido.playing = true
		ventilar(body)
