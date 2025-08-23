class_name ProceduralFaker
extends Resource

var rng = RandomNumberGenerator.new()
var product_object
func _init():
	rng.randomize()

func product():
	if !product_object: product_object = ProceduralFakerProduct.new(self)
	product_object
