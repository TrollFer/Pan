extends CharacterBody2D
class_name Saco

var objetivo : Pancracio

func echar_harina(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'masa':
		personaje.activar_transformacion('harina')
		print('Pancracio es ahora harina')

func seguimiento():
	if not objetivo == null:
		velocity = (objetivo.global_position - global_position)*10
