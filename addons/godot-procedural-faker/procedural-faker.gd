extends Resource

var rng = RandomNumberGenerator.new()
func _init(seed: String = ""):
	rng.seed = hash(seed)
	if seed == "": rng.randomize()
