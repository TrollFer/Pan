extends Estado

var potencia = 300

func _physics_process(delta: float) -> void: #No uso procesamiento para que no cancele otros estados
	if Input.is_action_just_pressed('saltar') and personaje.is_on_floor():
		personaje.velocity.y -= potencia
