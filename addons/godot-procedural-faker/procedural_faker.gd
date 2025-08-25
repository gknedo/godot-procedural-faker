class_name ProceduralFaker
extends Resource

var rng = RandomNumberGenerator.new()
var product_object
func _init():
	rng.randomize()

func product():
	if !product_object: product_object = ProceduralFakerProduct.new(self)
	return product_object

func fetch_sample(list: Array, options = {}):
	var index = rng.randi_range(0, list.size() - 1)
	return list[index]
