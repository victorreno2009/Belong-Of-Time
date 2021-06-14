extends Area2D




func _on_Final_Harbor1_body_entered(body):
	get_tree().change_scene("res://Final_Harbor1.tscn")

func FinalHarbor2():
	queue_free()
