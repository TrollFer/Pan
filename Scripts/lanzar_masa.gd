extends Estado

var objetivo : Vector2
var dir : Vector2
var masita_escena = preload("res://Escenas/masita.tscn") #Trozo de masa que hereda de pancracio
var masita : Masita
var potencia = 1000

func _physics_process(delta: float) -> void:
	activacion = Input.is_action_just_pressed("disparar")
	if activacion:
		maquina.cambiar(nombre)
		

func salir():
	if not masita == null:
		maquina.cambiar(nombre)


func procesamiento():
	pass

func entrar():
	objetivo = personaje.get_global_mouse_position()
	dir = (objetivo-personaje.global_position).normalized()
	masita = masita_escena.instantiate()
	get_parent().add_child(masita)
	masita.velocity = potencia*dir
