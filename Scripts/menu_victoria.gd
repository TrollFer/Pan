extends CanvasLayer

var pausado := false

func _ready() -> void:
	visible = false

func _physics_process(delta: float) -> void:
	if Global.victoria:
		pausar_o_continuar()
		Global.victoria = false

func _on_reiniciar_pressed() -> void:
	pausar_o_continuar()
	get_tree().current_scene.reiniciar_nivel()

func _on_salir_pressed() -> void:
	get_tree().quit()

func pausar_o_continuar():
	visible = !visible
	pausado = !pausado
	get_tree().paused = pausado


func _on_siguiente_pressed() -> void:
	pausar_o_continuar()
	get_tree().current_scene.crear_nivel(get_parent().numero + 1)
