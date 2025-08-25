extends Node2D

func _ready() -> void:
	print(ProceduralFaker.new().product().brand())
