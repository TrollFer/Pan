extends Estado

var rozamiento = 0.99
var dir


func _physics_process(delta: float) -> void:
	activacion = Input.is_action_pressed('md') or Input.is_action_pressed('mi')
	if activacion:
		maquina.cambiar(nombre)

func procesamiento():
	dir = Input.get_axis('mi', 'md')
	personaje.velocidad_externa.x = personaje.recurso_estado.velocidad*dir
