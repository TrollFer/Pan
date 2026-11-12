extends Estado

var potencia = 700

func _physics_process(delta: float) -> void:
	activacion = Input.is_action_just_pressed("saltar") and personaje.is_on_floor()
	if activacion:
		maquina.cambiar(nombre)

func entrar():
	personaje.velocidad_interna.y -= potencia
	maquina.cambiar('Idle')
