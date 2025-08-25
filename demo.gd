extends Node2D

func _ready() -> void:
	var faker = ProceduralFaker.new()
	print(faker.product().brand())
	print(faker.product().product_name())
	print(faker.product().product())

	print(faker.game().category())
	print(faker.game().mechanic())
	print(faker.game().title())

	print(faker.skill().tech_skill())
	print(faker.skill().specialty())
