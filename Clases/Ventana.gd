extends Area2D
class_name Ventana

func echar_aire(personaje: Pancracio):
	if personaje.recurso_estado.nombre == 'harina':
		personaje.queue_free()
