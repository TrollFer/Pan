extends Node
class_name Escena_principal

var nivel_actual
@export var niveles : Array[PackedScene]
@export var pantallas : Array[PackedScene]


func crear_nivel(numero_nivel: int):
	if not nivel_actual == null:
		nivel_actual.queue_free()
	nivel_actual = niveles[numero_nivel+1].instantiate()
	add_child(nivel_actual)
	for pantalla in pantallas:
		nivel_actual.add_child(pantalla.instantiate())

func reiniciar_nivel():
	nivel_actual.queue_free()
	nivel_actual = niveles[nivel_actual.numero+1].instantiate()
	add_child(nivel_actual)
	for pantalla in pantallas:
		nivel_actual.add_child(pantalla.instantiate())
