extends Area2D


func _on_Final_Tesla2_body_entered():
	get_tree().change_scene("res://Final_Tesla2.tscn")


func Final1():
	queue_free()
