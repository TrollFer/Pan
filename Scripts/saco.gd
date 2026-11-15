extends Saco


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Pancracio and not body is Masita:
		echar_harina(body)
		queue_free()


func _on_atraccion_body_entered(body: Node2D) -> void:
		if not body is Masita and body is Pancracio:
			objetivo = body
			
func _ready() -> void:
	$AnimatedSprite2D.play("default")

func _physics_process(delta: float) -> void:
	move_and_slide()
	seguimiento()
