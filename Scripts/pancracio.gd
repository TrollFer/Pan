extends Pancracio

@export var sprite : AnimatedSprite2D
var P

var velocidad_externa = Vector2(0,0) #Proviene de fuentes externas
var velocidad_interna = Vector2(0,0) #Proviene de fuentes internas(inputs)
var velocidad_gravedad = Vector2(0,0)

func _enter_tree() -> void:
	Global.pancracio = self

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		P = recurso_estado.masa*Global.gravedad
		velocidad_gravedad.y += P
	else:
		velocidad_gravedad = Vector2(0,0)
	
	velocidad_externa *= 0.999
	velocidad_interna *= 0.93
	velocity = velocidad_externa+velocidad_interna+velocidad_gravedad
	move_and_slide()

func activar_transformacion(nuevo_estado: String):
	get_node('Maquina_estados/Transformacion').transformacion(nuevo_estado)
