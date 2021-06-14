extends Node2D

var refjogador = null
var falas = ["Pegou projeto de Tesla."]
var escolha = 1
var boolean = false
var boolean2
var conversou_npc = false


func _process(delta):
	var inpt = Input.is_action_pressed("Interact")
	if inpt and boolean and conversou_npc == false:
		refjogador.spawnDialog(falas, escolha)
		boolean = false
		conversou_npc = true



func _on_Projeto_Tesla_body_entered(body):
	boolean = true
	refjogador = body



func _on_Projeto_Tesla_body_exited(body):
	boolean = false
	refjogador = null



