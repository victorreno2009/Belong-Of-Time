extends Area2D


func _on_Final_Tesla1_body_entered():
	get_tree().change_scene("res://Final_Tesla1.tscn")
	

func Final2():
	queue_free()
