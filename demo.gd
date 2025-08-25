extends Node2D
var faker: ProceduralFaker

func _ready() -> void:
	faker = ProceduralFaker.new()
	_render_adoc()


# Methods used to render REFERENCE.doc dynamics examples
func _render_adoc():
	print('= Godot Procedural Faker')
	print('')
	_render_adoc_table('product', ['brand', 'product_name', 'product'])
	_render_adoc_table('game', ['category', 'mechanic', 'title'])
	_render_adoc_table('skill', ['tech_skill', 'specialty'])

func _render_adoc_table(category: String, methods: Array[String]):
	print('== ' + category.capitalize())
	print('')
	print('[cols="1,1"]')
	print('|===')
	print('|Method |Examples')
	print('')
	for method in methods:
		_render_adoc_line(faker.call(category), method)
	print('|===')
	pass

func _render_adoc_line(instance, method: String):
	print('')
	print('.3+|' + method + '()')
	print('|' + instance.call(method))
	print('|' + instance.call(method))
	print('|' + instance.call(method))
