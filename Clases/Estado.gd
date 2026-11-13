extends Node
class_name Estado

@export var personaje : CharacterBody2D
@export var maquina : Maquina_estados
@export var nombre : String
var activacion : bool #(condicion que activa el estado)
var saltable := true #POr si se puede quitar un estado en cierto momento, por defecto activado


func salir():
	pass
func entrar():
	pass
func procesamiento():
	pass
