extends Node2D

var menu_abierto = false
@onready var menu = $ColorRect

func _ready() -> void:
	Dialogo.dia("dialogo3_4")
	#Tercer gameplay del capitulo 3
	Dialogo.dia("dialogo3_3")
	#Segundo gameplay del capitulo 3
	Dialogo.dia("dialogo3_2")
	#Primer gameplay del capitulo 3
	Dialogo.dia("dialogo3")
	Dialogo.dia("dialogo2_3")
	#Segundo gameplay del capitulo 2
	Dialogo.dia("dialogo2_2")
	#Primer gameplay del capitulo 2
	Dialogo.dia("dialogo2")
	Dialogo.dia("dialogo1_2")
	#Gameplay del capitulo 1
	Dialogo.dia("dialogo1")
	#Aquí va el gameplay del capitulo 0
	Dialogo.dia("dialogo0")

func _process(delta: float) -> void:
	if Input.is_action_pressed("salir"):
		if !menu_abierto:
			get_tree().paused = true
			menu.show()
		else:
			get_tree().paused = false
			menu.hide()


func _on_continuar_pressed() -> void:
	get_tree().paused = false
	menu.hide()

func _on_salir_pressed() -> void:
	get_tree().quit()
