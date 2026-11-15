extends CharacterBody2D
class_name Gota

var objetivo : Pancracio

func echar_agua(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'harina':
		personaje.activar_transformacion('masa')
		print('Pancracio es ahora masa')

func seguimiento():
	if not objetivo == null:
		velocity = (objetivo.global_position - global_position)*10
