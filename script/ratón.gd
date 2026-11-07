extends Node2D

@onready var area = $Area2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	global_position = get_global_mouse_position()
	check()

func check():
	var cosas = area.get_overlapping_areas()
	for cosa in cosas:
		if cosa.get_parent().is_in_group("eliminable"):
			cosa.eliminar()
