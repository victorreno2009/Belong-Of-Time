extends Area2D


func _on_Final_Tesla2_body_entered(body):
	get_tree().change_scene("res://Final_Tesla2.tscn")


func Final2():
	queue_free()
