class_name ProceduralFakerProduct
extends Resource

var faker:ProceduralFaker
func _init(faker: ProceduralFaker) -> void:
	self.faker = faker

func brand():
	var r = faker.rng.randi_range(0,10)
	if r <= 4:
		return faker.fetch_sample(ProceduralFakerProductData.B1) + faker.fetch_sample(ProceduralFakerProductData.B2)
	if r <= 10:
		var name = [
			faker.fetch_sample(ProceduralFakerProductData.START),
			faker.fetch_sample(ProceduralFakerProductData.VOWELS),
			faker.fetch_sample(ProceduralFakerProductData.SUFFIX),
		]

		if faker.rng.randi_range(0,1) == 0:
			name.append(faker.fetch_sample(ProceduralFakerProductData.SUFFIX))
		return "".join(name).capitalize()
	pass
