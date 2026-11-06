extends Node
class_name Maquina_estados

@export var personaje : CharacterBody2D
@export var estados : Array[Estado]
var estado_activo

func cambiar(estado: String):
	estado_activo.salir()
	estado_activo = get_node(estado)
	estado_activo.entrar()

func _physics_process(delta: float) -> void:
	estado_activo.procesamiento()
