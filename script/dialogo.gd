extends Node

var dialogando = false
var dialogo0 = "res://dialogos/Capitulo0.dialogue"
var dialogo1 = "res://dialogos/Capitulo1.dialogue"
var dialogo2 = "res://dialogos/Capitulo2.dialogue"
var dialogo3 = "res://dialogos/Capitulo3.dialogue"

func dia(a):
	dialogando = true
	match a:
		"diaologo0":
			DialogueManager.show_dialogue_balloon(dialogo0)
		"diaologo1":
			DialogueManager.show_dialogue_balloon(dialogo1)
		"diaologo2":
			DialogueManager.show_dialogue_balloon(dialogo2)
		"diaologo3":
			DialogueManager.show_dialogue_balloon(dialogo3)
	
	dialogando = false
