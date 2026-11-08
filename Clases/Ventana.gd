extends Area2D
class_name Ventana

func echar_aire(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'harina':
		personaje.queue_free()
		print('Pancracio voló por los aires')
