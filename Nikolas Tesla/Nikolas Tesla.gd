extends StaticBody2D

var refjogador = null
var Tesla = "Tesla"
var falas = ["???: O que desejas, caro senhor?", "???: Onde você está?", "???: Este é o ano de 1885, no qual irei revolucionar a história de energia. Desculpe minha falta de educação, meu nome é Nikolas Tesla."]
var escolha = 3
var escolha1 = "Ajudar na bobina de Tesla"
var escolha2 = "Burlar o projeto"
var boolean = false
var boolean2
var conversou_npc = false


func _process(delta):
	var inpt = Input.is_action_pressed("Interact")
	if inpt and boolean and conversou_npc == false:
		refjogador.spawnDialogo(falas, escolha, escolha1, escolha2, Tesla)
		boolean = false
		conversou_npc = true

func _on_Area2D_body_entered(body):
	boolean = true
	refjogador = body

func _on_Area2D_body_exited(body):
	boolean = false
	refjogador = null

func escolha_boa():
	$Label.text = "Você apoiou uma causa nobre, meu jovem"
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""

func escolha_ruim():
	$Label.text = "Socorro!"
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""



