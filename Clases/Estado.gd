extends Node
class_name Estado

@export var personaje : CharacterBody2D
@export var maquina : Maquina_estados
@export var nombre : String
var activacion : bool #(condicion que activa el estado)


func salir():
	pass
func entrar():
	pass
func procesamiento():
	pass
