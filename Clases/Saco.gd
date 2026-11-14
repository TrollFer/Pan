extends CharacterBody2D
class_name Saco

func echar_harina(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'masa':
		personaje.activar_transformacion('harina')
		print('Pancracio es ahora harina')
