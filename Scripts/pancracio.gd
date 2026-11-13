extends Pancracio

@export var sprite : AnimatedSprite2D

func _enter_tree() -> void:
	Global.pancracio = self
	
func _ready() -> void:
	floor_snap_length = 5

func _physics_process(delta: float) -> void:
	calcular_velocidad()
	velocity = velocidad_externa+velocidad_interna
	move_and_slide()

func activar_transformacion(nuevo_estado: String):
	get_node('Maquina_estados/Transformacion').transformacion(nuevo_estado)
