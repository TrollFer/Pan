extends CharacterBody2D
class_name Gota

func echar_agua(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'harina':
		personaje.activar_transformacion('masa')
		print('Pancracio es ahora masa')
	else:
		personaje.queue_free()
		print('Pancracio es pan mojado')
