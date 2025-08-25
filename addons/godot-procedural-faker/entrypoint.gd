@tool
extends EditorPlugin

#const AUTOLOAD_NAME = "ProceduralFakerAutoload"

func _enter_tree() -> void:
	pass
	#add_autoload_singleton(AUTOLOAD_NAME, "res://addons/godot-procedural-faker/procedural_faker.gd")


func _exit_tree() -> void:
	pass
	#remove_autoload_singleton(AUTOLOAD_NAME)
