class_name ProceduralFakerProduct
extends ProceduralFakerBase

var data = ProceduralFakerProductData

func brand() -> String:
  var r = faker.rng.randi_range(0,10)
  if r <= 4:
    return fetch_sample(data.B1) + fetch_sample(data.B2)
  var name = [
    fetch_sample(data.START),
    fetch_sample(data.VOWELS),
    fetch_sample(data.SUFFIX),
  ]

  if faker.rng.randi_range(0,1) == 0:
    name.append(fetch_sample(data.SUFFIX))
  return "".join(name).capitalize()
  pass

func product_name() -> String:
  var name = [
    fetch_sample(data.ADJ)
  ]
  if faker.rng.randi_range(0,1) == 0:
    name.append(fetch_sample(data.ADJ))
  name.append(fetch_sample(data.NOUN))
  return " ".join(name)

func product() -> String:
  return " ".join([brand(), product_name()])
