@tool
extends EditorPlugin

const AUTOLOAD_NAME = "GodotFaker"

func _enter_tree() -> void:
	add_autoload_singleton(AUTOLOAD_NAME, "res://addons/godot-procedural-faker/some_autoload.tscn")
	pass


func _exit_tree() -> void:
	remove_autoload_singleton(AUTOLOAD_NAME)
	pass
