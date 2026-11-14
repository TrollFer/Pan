extends CanvasLayer

var pausado := false
@onready var mensaje_muerte = $Control/VBoxContainer/Mensaje_muerte

func _ready() -> void:
	visible = false

func _physics_process(delta: float) -> void:
	if Global.muerte:
		pausar_o_continuar()
		Global.muerte = false
		mensaje_muerte.text = Global.mensaje_muerte
		

func _on_reiniciar_pressed() -> void:
	pausar_o_continuar()
	get_tree().current_scene.reiniciar_nivel()

func _on_salir_pressed() -> void:
	get_tree().quit()

func pausar_o_continuar():
	visible = !visible
	pausado = !pausado
	get_tree().paused = pausado
