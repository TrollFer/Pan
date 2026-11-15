extends Area2D
class_name Kill_zone

func matar(personaje):
	if personaje is Pancracio:
		Global.mensaje_muerte = 'Pancracio cayó a la basura'
		Global.muerte = true
