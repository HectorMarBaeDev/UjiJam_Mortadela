extends Node

var dialogando = false
var dialogo0 = load("res://dialogos/Capitulo0.dialogue")
var dialogo1 = load("res://dialogos/Capitulo1.dialogue")
var dialogo1_2 = load("res://dialogos/Capitulo1_2.dialogue")
var dialogo2 = load("res://dialogos/Capitulo2.dialogue")
var dialogo2_2 = load("res://dialogos/Capitulo2_2.dialogue")
var dialogo2_3 = load("res://dialogos/Capitulo2_3.dialogue")
var dialogo3 = load("res://dialogos/Capitulo3.dialogue")
var dialogo3_2 = load("res://dialogos/Capitulo3_2.dialogue")
var dialogo3_3 = load("res://dialogos/Capitulo3_3.dialogue")
var dialogo3_4 = load("res://dialogos/Capitulo3_4.dialogue")

func dia(a):
	dialogando = true
	match a:
		"dialogo0":
			DialogueManager.show_dialogue_balloon(dialogo0, "start")
		"dialogo1":
			DialogueManager.show_dialogue_balloon(dialogo1, "start")
		"dialogo1_2":
			DialogueManager.show_dialogue_balloon(dialogo1_2, "start")
		"dialogo2":
			DialogueManager.show_dialogue_balloon(dialogo2, "start")
		"dialogo2_2":
			DialogueManager.show_dialogue_balloon(dialogo2_2, "start")
		"dialogo2_3":
			DialogueManager.show_dialogue_balloon(dialogo2_3, "start")
		"dialogo3":
			DialogueManager.show_dialogue_balloon(dialogo3, "start")
		"dialogo3_2":
			DialogueManager.show_dialogue_balloon(dialogo3_2, "start")
		"dialogo3_3":
			DialogueManager.show_dialogue_balloon(dialogo3_3, "start")
		"dialogo3_4":
			DialogueManager.show_dialogue_balloon(dialogo3_4, "start")
	
	dialogando = false
