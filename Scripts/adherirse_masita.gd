extends Estado

func _physics_process(delta: float) -> void:
	if personaje.is_on_wall():
		maquina.cambiar(nombre)
