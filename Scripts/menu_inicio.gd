extends CanvasLayer


func _on_salir_pressed() -> void:
	get_tree().quit()


func _on_comenzar_pressed() -> void:
	get_tree().current_scene.crear_nivel(get_parent().numero + 1)
