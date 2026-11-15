extends Kill_zone


func _on_body_entered(body: Node2D) -> void:
	if body is Masita:
		body.queue_free()
	elif body is Pancracio:
		matar(body)
	
