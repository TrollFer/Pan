extends Estado

var potencia = 700

func _physics_process(delta: float) -> void: #No uso procesamiento para que no cancele otros estados
	if Input.is_action_just_pressed('saltar') and personaje.is_on_floor():
		personaje.velocidad_interna.y -= potencia
