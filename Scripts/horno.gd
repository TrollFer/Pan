extends Horno


func _on_body_entered(body: Node2D) -> void:
	if body is Pancracio:
		echar_fuego(body)
