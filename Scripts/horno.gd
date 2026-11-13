extends Horno

@onready var sprite = $AnimatedSprite2D

func _ready() -> void:
	sprite.play('default')

func _on_body_entered(body: Node2D) -> void:
	if body is Pancracio and not body is Masita:
		echar_fuego(body)
