extends Control

onready var som = $somButton

func _on_Button_Continuar_pressed():
	som.play()
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Cenas/Mapa inicial.tscn")
