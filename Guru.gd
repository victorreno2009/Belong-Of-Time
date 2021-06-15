extends StaticBody2D

var refjogador = null
var falas = ["Guru do Tempo: Olá jogador, sou o guru do tempo, e estou aqui para lhe ajudar a entender o objetivo do jogo.",
"Guru do Tempo: Como você viu, um portal enorme lhe sugou e te trouxe para um local desconhecido.",
"Guru do Tempo: Para você reativar o portal, você deverá interagir com os npcs que tem pelo mapa e fazer uma escolha.",
"Guru do Tempo: Fazendo tal escolha, você poderá voltar, ou não, dependendo do que você for escolher, terá consequências, então seja sábio!"]

var escolha = 4
var boolean = false
var boolean2
var conversou_npc = false


func _process(delta):
	var inpt = Input.is_action_pressed("Interact")
	if inpt and boolean and conversou_npc == false:
		refjogador.spawnDialog(falas, escolha)
		boolean = false
		conversou_npc = true



func _on_Area2D_body_entered(body):
	boolean = true
	refjogador = body


func _on_Area2D_body_exited(body):
	boolean = false
	refjogador = null
