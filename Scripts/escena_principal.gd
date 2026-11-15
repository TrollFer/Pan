extends Escena_principal



func _ready() -> void:
	crear_nivel(-1)

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("god_mode"):
		Global.victoria = true


func _on_timer_timeout() -> void:
	aviso.visible = true
