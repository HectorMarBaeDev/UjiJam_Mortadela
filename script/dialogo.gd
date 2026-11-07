extends Node

var dialogando = false

const ejemplo = preload("res://dialogos/ejemplo.dialogue")

func dia(a):
	dialogando = true
	match a:
		"ejemplo":
			DialogueManager.show_dialogue_balloon(ejemplo, "start")
	
	dialogando = false
