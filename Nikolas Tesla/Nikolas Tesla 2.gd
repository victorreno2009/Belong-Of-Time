extends StaticBody2D

var refjogador = null
var falas = ["Nikolas Tesla: Muito obrigado!",
"Nikolas Tesla: Agora irei compartilhar a minha idéia com você.",
"Nikolas Tesla: Com esta nova invenção, irei trazer energia barata e eficiente para o mundo.",
"Nikolas Tesla: Ao contrário de umas 'certas pessoas'...",
"Vinicius: Quem seriam essas certas pessoas?",
"Nikolas Tesla: Na verdade, é apenas uma, estou falando de Thomas Edison.",
"Vinicius: Por quê vocês não trabalham juntos?",
"Nikolas Tesla: O que você acabou de dizer é uma tremenda asneira, nunca que iria compartilhar meu conhecimento com meu concorrente.",
"Nikolas Tesla: Ele levaria basicamente boa parte do crédito...",
"Vinicius: Mas qual é a diferença entre as suas tecnologias?",
"Nikolas Tesla: Thomas Edison defende a ideia de usar correntes contínuas enquanto eu uso correntes alternadas.",
"Nikolas Tesla: Corrente contínua precisa de muito mais material para fluir energia além de gerar mais calor, desgastando os componentes de uma forma rápida.",
"Nikolas Tesla: Ela não tem um alcance tão alto de distribuição, saindo mais caro com o projeto com muita energia perdida podendo causar até incêndios.",
"Nikolas Tesla: Pensando de um jeito melhor, a minha energia sai mais barata, não propaga muito calor, trafega em uma longa distância e sai mais barato.",
"Nikolas Tesla: Não compactuo com ele, pelo fato dele ser muito orgulhoso com a idéia dele...",
"Nikolas Tesla: Porém, não desprezo a idéia dele de ter feito a lâmpada, realmente foi algo estupendo.",
"Nikolas Tesla: Não sou de guardar rancor, por isso reconheço o belo trabalho dele.",
"Vinicius: Nossa, que *HISTÓRIA* interessante!",
"Vinicius: Se é assim o que pensa, então é como deve ser.",
"Vinicius: Cara, acho que não estou me sentindo bem, preciso ir ao banheiro.",
"Nikolas Tesla: Não há algum perto.",
"Vinicius: Não se preocupe, eu procuro.",
"Nikolas Tesla: Pois bem, então eu me despeço.",
"Vinicius: Adeus (Eu precisava despistá-lo de alguma forma né rsrs)"
]
var escolha = 24
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
