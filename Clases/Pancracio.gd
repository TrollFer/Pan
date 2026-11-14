extends CharacterBody2D
class_name Pancracio

var velocidad_externa = Vector2(0,0) #Proviene de fuentes externas
var velocidad_interna = Vector2(0,0) #Proviene de fuentes internas(inputs)
var P

@export var recurso_estado : Recurso_estado #El recurso estado lo utlizamos sobre todo para poder alternar las animaciones de los tres estado que tiene pancracio(harina, masa, pan)

func calcular_velocidad():
	
	if not is_on_floor():
		if velocity.y < 0:
			P = recurso_estado.masa*Global.gravedad
			velocidad_externa.y += P*2
		elif velocity.y >= 0:
			velocidad_interna.y *= 0.9
			P = recurso_estado.masa*Global.gravedad
			velocidad_externa.y += P*2
	else:
		velocidad_externa.y = 0
	
	if velocidad_externa.length() < 1:
		velocidad_externa = Vector2(0,0)
	if velocidad_interna.length() < 10:
		velocidad_interna = Vector2(0,0)
	if velocidad_interna.x*velocidad_externa.x < 0: #Para veitar movimientos raros cuando se impulsa
		velocidad_externa.x *= 0.95
	
	if is_on_floor():
		velocidad_externa.x *= 0.8
		velocidad_externa.y = 0
	elif abs(velocidad_interna.y) < 10:
		velocidad_interna.y = 0
	velocidad_externa *= 0.99
	velocidad_interna *= 0.95
	velocity = velocidad_externa+velocidad_interna
