extends Area2D


func _on_Final_Ditadura2_body_entered(body):
	get_tree().change_scene("res://Final_Ditadura2.tscn")

func FinalDitadura1():
	queue_free()
