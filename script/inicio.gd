extends Node2D

@onready var nombre = $LineEdit
@onready var tiempo = $Timer

var cara = true

func _on_button_pressed() -> void:
	inición_sesiada()

func _on_button_2_pressed() -> void:
	get_tree().quit()

func _on_button_3_pressed() -> void:
	if randi_range(0,1) == 0:
		cara = false
	else:
		cara = true
	tirar_moneda()

func tirar_moneda():
	tiempo.start()

func _on_timer_timeout() -> void:
	if cara:
		inición_sesiada()
	else:
		get_tree().quit()

func inición_sesiada():
	get_tree().change_scene_to_file("res://scenes/juego.tscn")
