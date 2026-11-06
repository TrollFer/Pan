extends Pancracio

@export var sprite : AnimatedSprite2D
var P
func _ready() -> void:
	P = recurso_estado.masa*Global.gravedad

func _physics_process(delta: float) -> void:
	velocity.y += P
	move_and_slide()
