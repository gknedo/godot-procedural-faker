class_name ProceduralFaker
extends Resource

var rng = RandomNumberGenerator.new()
var instance_objects = {}
func _init():
	rng.randomize()

func product() -> ProceduralFakerProduct:
	return _get_or_add_instance("product", ProceduralFakerProduct) as ProceduralFakerProduct

func game() -> ProceduralFakerGame:
	return _get_or_add_instance("game", ProceduralFakerGame) as ProceduralFakerGame

func skill() -> ProceduralFakerSkill:
	return _get_or_add_instance("skill", ProceduralFakerSkill) as ProceduralFakerSkill

func _get_or_add_instance(key: String, klass):
	var instance_object = instance_objects.get(key)
	if !instance_object:
		instance_object = klass.new(self)
		instance_objects.set(key, instance_object)
	return instance_object
