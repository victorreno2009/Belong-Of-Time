extends Area2D


func _on_Final_Tesla1_body_entered(body):
	get_tree().change_scene("res://Final_Tesla1.tscn")
	

func Final2():
	queue_free()
	print("Final2")
