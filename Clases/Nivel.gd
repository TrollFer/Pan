extends Node2D
class_name Nivel

@export var numero : int

func _enter_tree() -> void:
	process_mode = Node.PROCESS_MODE_PAUSABLE
