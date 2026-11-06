extends Estado

var rozamiento = 1.09

func _physics_process(delta: float) -> void:
	activacion = Input.is_action_pressed('md') or Input.is_action_pressed('mi')
	if activacion:
		maquina.cambiar(nombre)

func procesamiento():
	if Input.is_action_pressed("md"):
		personaje.velocity.x += personaje.velocidad
	elif Input.is_action_pressed("mi"):
		personaje.velocity.x -= personaje.velocidad
	personaje.velocity.x /= rozamiento
