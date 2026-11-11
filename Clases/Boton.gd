extends CharacterBody2D
class_name Boton

@export var objetivo : Node #Aquello con lo que interactúa
var activado = false #Para ver si puede ser activado

func mandar_señal():
	if activado == false:
		objetivo.activar()
		activado = true
