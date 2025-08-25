class_name ProceduralFakerBase
extends Resource

var faker:ProceduralFaker
func _init(faker: ProceduralFaker) -> void:
  self.faker = faker

func fetch_sample(list: Array, options = {}):
  var index = faker.rng.randi_range(0, list.size() - 1)
  return list[index]
