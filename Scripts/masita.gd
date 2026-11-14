extends Masita

@export var sprite : AnimatedSprite2D

func _ready() -> void:
	floor_snap_length = 5

func _enter_tree() -> void:
	Global.masita = self

func _exit_tree() -> void:
	Global.masita = null

func _physics_process(delta: float) -> void:
	calcular_velocidad()
	velocity = velocidad_externa+velocidad_interna
	move_and_slide()
