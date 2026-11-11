extends Boton

@onready var animacion := $AnimatedSprite2D

func _ready() -> void:
	animacion.play('normal')
	

func _on_deteccion_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and body is not Boton:
		mandar_señal()
		animacion.play('aplastado')
