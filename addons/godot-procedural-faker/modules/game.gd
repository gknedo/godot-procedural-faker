class_name ProceduralFakerGame
extends ProceduralFakerBase

var data = ProceduralFakerGameData

func category() -> String:
	return fetch_sample(data.CATEGORY)

func mechanic() -> String:
	return fetch_sample(data.MECHANIC)

func title() -> String:
	var name = []
	if faker.rng.randi_range(0,1) == 0:
		name.append(fetch_sample(data.PREFIXES))
	name.append(fetch_sample(data.ADJ_AND_ADV))
	name.append(fetch_sample(data.NOUNS))
	return " ".join(name)
