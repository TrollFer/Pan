extends Estado

func _physics_process(delta: float) -> void:
	activacion = Input.is_action_just_pressed("disparar")
	if activacion:
		maquina.cambiar(nombre)

func procesamiento():
	personaje.queue_free()
