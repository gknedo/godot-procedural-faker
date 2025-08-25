class_name ProceduralFakerSkill
extends ProceduralFakerBase

var data = ProceduralFakerSkillData

func tech_skill() -> String:
	return fetch_sample(data.TECH_SKILLS)

func specialty() -> String:
	return " ".join([fetch_sample(data.SPECIALTY_START), fetch_sample(data.SPECIALTY_END)])
