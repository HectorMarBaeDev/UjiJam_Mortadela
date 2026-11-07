extends Node2D

@onready var selección = $ColorRect
@onready var nombre = $ColorRect/LineEdit

var cara = true

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	if Global.nombre == "skibidisigma":
		selección.show()
	else:
		get_tree().change_scene_to_file("res://scenes/juego.tscn")

func _on_button_2_pressed() -> void:
	get_tree().quit()

func _on_button_3_pressed() -> void:
	Global.nombre = nombre.text
	get_tree().change_scene_to_file("res://scenes/juego.tscn")

func _on_button_xd_pressed() -> void:
	if randi_range(0,1) == 0:
		cara = false
	else:
		cara = false
	tirar_moneda()

func tirar_moneda():
	pass
