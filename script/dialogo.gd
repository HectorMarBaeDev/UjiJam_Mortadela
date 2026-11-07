extends Node

const ejemplo = preload("res://dialogos/ejemplo.dialogue")

func dia(a):
	match a:
		"ejemplo":
			DialogueManager.show_dialogue_balloon(ejemplo, "start")
