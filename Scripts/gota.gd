extends Gota

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Pancracio and not body is Masita:
		echar_agua(body)
		queue_free()


func _on_atraccion_body_entered(body: Node2D) -> void:
	if not body is Masita:
		velocity = (body.global_position - global_position)*10

func _physics_process(delta: float) -> void:
	move_and_slide()
	$AnimatedSprite2D.play("default")
