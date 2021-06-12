extends KinematicBody2D

onready var cenaDialogo = load("res://DialogBox/Main.tscn")
export var velocidade_andar = 200
var pos = "Idle Down"

var movement = Vector2(0,0)

func _physics_process(delta):

	
	var horizontal_Axis = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	movement.x = velocidade_andar * horizontal_Axis
	var vertical_Axis = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	movement.y = velocidade_andar * vertical_Axis
	
	
	move_and_slide(movement,Vector2.UP)
	
	update_animation()

func update_animation():
	if movement.x > 0:
		$AnimatedSprite.scale.x = 1
	elif movement.x < 0:
		$AnimatedSprite.scale.x = -1
		
	if movement.y == 0 and abs(movement.x) > 0:
		$AnimatedSprite.play("Walk Right")
		pos = "Idle Right"
	if movement.y > 0 and movement.x == 0:
		$AnimatedSprite.play("Walk Down")
		pos = "Idle Down"
	elif movement.y < 0 and movement.x == 0:
		$AnimatedSprite.play("Walk Up")
		pos = "Idle Up"
	elif movement.y == 0 and movement.x == 0: 
		$AnimatedSprite.play(pos)

func spawnDialogo(dialog, escolha, escolha1, escolha2, Tesla):
	var dialogBox = cenaDialogo.instance()
	$CanvasLayer.add_child(dialogBox)
	dialogBox.get_node("DialogBox").getDialog(dialog, escolha, escolha1, escolha2, Tesla)

func spawnDialog(dialog, escolha):
	var dialogBox = cenaDialogo.instance()
	$CanvasLayer.add_child(dialogBox)
	dialogBox.get_node("DialogBox").getDialogo(dialog, escolha)
