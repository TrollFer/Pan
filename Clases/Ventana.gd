extends Area2D
class_name Ventana

func echar_aire(personaje: Node2D):
	if personaje.recurso_estado.nombre == 'harina' and not personaje is Masita:
		Global.mensaje_muerte = 'Pancracio voló por los aires'
		Global.muerte = true
	elif personaje is Masita:
		personaje.queue_free()
