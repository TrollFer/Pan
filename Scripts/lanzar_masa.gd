extends Estado

var objetivo : Vector2
var dir : Vector2
var masita_escena = preload("res://Escenas/masita.tscn") #Trozo de masa que hereda de pancracio
var masita : Masita
var potencia = 800

@onready var camara = $"../../Camera2D"

func _physics_process(delta: float) -> void:
	activacion = Input.is_action_just_pressed("disparar") and personaje.recurso_estado.nombre == 'masa'
	if activacion:
		maquina.cambiar(nombre)


func procesamiento():
	if not is_instance_valid(masita):
		saltable = true
	else:
		camara.enabled = true

func entrar():
	objetivo = personaje.get_global_mouse_position()
	dir = (objetivo-personaje.global_position).normalized()
	masita = masita_escena.instantiate()
	get_parent().add_child(masita)
	masita.global_position = personaje.global_position + dir*120
	masita.velocidad_externa = potencia*dir + personaje.velocity
	
	saltable = false
	camara.enabled = false
