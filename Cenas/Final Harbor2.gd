extends Area2D



func _on_Final_Harbor2_body_entered(body):
	get_tree().change_scene("res://Final_Harbor2.tscn")

func FinalHarbor1():
	queue_free()
