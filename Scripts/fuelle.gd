extends Fuelle


func _on_zona_empuje_body_entered(body: Node2D) -> void:
	if body is Pancracio:
		ventilar(body)
