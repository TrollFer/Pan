extends Area2D
class_name Horno

func echar_fuego(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'masa':
		personaje.activar_transformacion('pan')
		print('Pancracio es ahora PAN')
	else:
		personaje.queue_free()
		print('Pancracio es pan quemado')
