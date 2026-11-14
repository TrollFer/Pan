extends Area2D
class_name Horno

func echar_fuego(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'masa':
		Global.victoria = true
