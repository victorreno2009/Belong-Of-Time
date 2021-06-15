extends StaticBody2D

var refjogador = null
var Cap = "Capitão"
var falas = ["Juvenal: Ai minha cabeça, onde estou?",
"General Japonês: Neste dia glorioso, 7 de dezembro de 1941, iremos realizar um ato importante para o império japonês.",
"Soldados: O que seria general?",
"General Japonês: Iremos atacar a base naval de Pearl Harbor!!!!!",
"Juvenal: O quê? Estou no passado? Época de guerra?",
"Juvenal: Como isso aconteceu?",
"General Japonês: Vamos agora colocar os aviões para decolarem!!!",
"Soldados: Aeeeee!",
"Juvenal: Será que se eu impedir os japoneses de alguma forma, a história tomaria um rumo melhor sem os EUA com danos severos?",
"Juvenal: Tem um botão ali de desligar o sistema do navio, será que devo?" 

]
var escolha = 10
var escolha1 = "Intervir"
var escolha2 = "Não fazer nada"
var boolean = false
var boolean2
var conversou_npc = false
onready var som = $Som_Button

func _process(delta):
	var inpt = Input.is_action_pressed("Interact")
	if inpt and boolean and conversou_npc == false:
		refjogador.spawnDialogo(falas, escolha, escolha1, escolha2, Cap)
		boolean = false
		conversou_npc = true

func _on_Area2D_body_entered(body):
	boolean = true
	refjogador = body

func _on_Area2D_body_exited(body):
	boolean = false
	refjogador = null

func escolha_boa():
	som.play()
	get_tree().call_group("Harbor2", "FinalHarbor1")
	$Label.text = "Espere, quem é você? Soldados, prendam-no!!!"
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""

func escolha_ruim():
	som.play()
	get_tree().call_group("Harbor1", "FinalHarbor2")
	$Label.text = "Avante soldados!!!"
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""









