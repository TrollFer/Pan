extends CharacterBody2D
class_name Pancracio


@export var recurso_estado : Recurso_estado #El recurso estado lo utlizamos sobre todo para poder alternar las animaciones de los tres estado que tiene pancracio(harina, masa, pan)
var velocidad = 15
var masa = 1

func transformar(estado: String):
	if estado == 'harina':
		recurso_estado = load("res://Recursos/harina.tres")
	if estado == 'masa':
		recurso_estado = load("res://Recursos/masa.tres")
	if estado == 'pan':
		recurso_estado = load("res://Recursos/pan.tres")
