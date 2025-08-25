extends Node2D

func _ready() -> void:
	var faker = ProceduralFaker.new()
	print(faker.product().brand())
	print(faker.product().product_name())
	print(faker.product().product())
