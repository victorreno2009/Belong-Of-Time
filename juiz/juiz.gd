extends StaticBody2D

var refjogador = null
var Juiz = "Juizado"
var falas = ["Victor: Espere onde estou?",
"Juiz: Começando o caso número 264, data de 10/12/1964.",
"Juiz: Caro réu, você está sendo julgado por crimes contra o regime militar brasileiro.",
"Victor: Regime militar brasileiro?",
"Victor: Sério que acordei na época da ditadura?",
"Réu: Posso dizer, meritíssimo, nunca que iria fazer igual crime como me condena. Sou um cidadão honesto.",
"Juiz: Será mesmo? O que seria então essa arma que encontramos em sua residência?",
"Réu: Como? Essa arma não é minha. Nunca usei uma em minha vida toda.",
"Juiz: Não é o que minhas informações dizem.",
"Réu: Por favor, eu sou inocente.",
"Juri: Hahahaha.",
"Victor: Isto não é um julgamento justo, todos são militares apoiadores ao regime, sem ao mínimo ter um advogado para defender o réu...",
"Victor: Preciso fazer algo...",
] 

var escolha = 14
var escolha1 = "Apenas assistir"
var escolha2 = "Defender o réu"
var boolean = false
var boolean2
var conversou_npc = false
onready var som = $Som_Button

func _process(delta):
	var inpt = Input.is_action_pressed("Interact")
	if inpt and boolean and conversou_npc == false:
		refjogador.spawnDialogo(falas, escolha, escolha1, escolha2, Juiz)
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
	get_tree().call_group("Ditadura2", "FinalDitadura1")
	$Label.text = "Você está setenciado a prisão, levem-no!"
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""

func escolha_ruim():
	som.play()
	get_tree().call_group("Ditadura1", "FinalDitadura2")
	$Label.text = ""
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""
