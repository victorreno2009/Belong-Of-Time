extends Control

onready var som = $somButton

func _on_Finalizar_pressed():
	som.play()
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Tela_Inicial.tscn")
