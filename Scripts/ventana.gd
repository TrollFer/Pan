extends Ventana

@onready var animacion := $AnimatedSprite2D

func _ready() -> void:
	animacion.play('default')

func _on_body_entered(body: Node2D) -> void:
	if body is Pancracio:
		echar_aire(body)
