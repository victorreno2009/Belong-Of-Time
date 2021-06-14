extends StaticBody2D

var refjogador = null
var Tesla = "Nikolas"
var falas = ["???: O que desejas, caro senhor?",
"Vinicius: Senhor, aconteceu algo estranho, estou meio desorientado, levei uma pancada forte na cabeça e não me lembro de nada.",  
"???: Bom, eu não sou nenhum doutor em medicina, então não posso saber se o que dizes é verdade ou mentira...", 
"Vinicius: E quem é você?", 
"???: Me perdoe a falta de educação, me chamo Nikolas Tesla.",
"Vinicius: Como?", 
"Vinicius: O senhor é Nikolas Tesla?", 
"Nikolas Tesla: Sim, e estou prestes a revolucionar o mundo com minha nova invenção. Projeto chamado bobina de Tesla.", 
"Vinicius: Nossa, estou no ano de 1885?", "Nikolas Tesla: Por quê a surpresa, caro senhor?", 
"Vinicius: Está bem, eu tenho um segredo para lhe contar.", 
"Vinicius: Eu não estou louco, acredite em mim, mas eu vim do futuro. não sei exatamente o que estou fazendo aqui, mas, agora que estou aqui, não tenho muitas opções a não ser que a história prossiga da forma como deve.", 
"Nikolas Tesla: Há, que loucura o que dizes. Tenho mais com o que se preocupar.", 
"Nikolas Tesla: Bom, você não é o único louco aqui, então irei lhe pedir uma ajuda. Você quer me ajudar a fazer minha bobina?", 
]
var escolha = 14
var escolha1 = "Ajudar na bobina de Tesla"
var escolha2 = "Recusar"
var boolean = false
var boolean2
var conversou_npc = false
onready var som = $Som_Button

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
	som.play()
	get_tree().call_group("Tesla2", "Final1")
	$Label.text = "Pois bem jovem, vá até meu armazém e traga-me a planta do projeto."
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""

func escolha_ruim():
	som.play()
	get_tree().call_group("Tesla1", "Final2")
	$Label.text = "Socorro!"
	yield(get_tree().create_timer(3), "timeout")
	$Label.text = ""






