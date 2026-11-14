extends CanvasLayer

var pausado := false

func _ready() -> void:
	visible = false

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("pausar"):
		pausar_o_continuar()

func pausar_o_continuar():
	visible = !visible
	pausado = !pausado
	get_tree().paused = pausado

func _on_continuar_pressed() -> void:
	pausar_o_continuar()

func _on_reiniciar_pressed() -> void:
	pausar_o_continuar()
	get_tree().current_scene.reiniciar_nivel()

func _on_salir_pressed() -> void:
	get_tree().quit()
