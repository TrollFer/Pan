extends Estado


var potencia = 400

func _physics_process(delta: float) -> void:
	activacion = Input.is_action_just_pressed("saltar") and personaje.is_on_floor()
	if activacion:
		maquina.cambiar(nombre)

func entrar():
	personaje.velocidad_interna.y -= potencia
	maquina.cambiar('Idle_masita')

#func procesamiento(): #No uso procesamiento para que no cancele otros estados
	#if Input.is_action_just_pressed('saltar') and personaje.is_on_floor():
		#personaje.velocidad_interna.y -= potencia
