extends Estado

var estado: String #me refiero a estado de masa, harina o pan
	
func transformacion(nuevo_estado: String):
	estado = nuevo_estado
	maquina.cambiar(nombre)

func entrar():
	if estado == 'harina':
		personaje.recurso_estado = load("res://Recursos/harina.tres")
	if estado == 'masa':
		personaje.recurso_estado = load("res://Recursos/masa.tres")
	if estado == 'pan':
		personaje.recurso_estado = load("res://Recursos/pan.tres")
	#Tambien puedo añadir aqui las transformaciones
	
