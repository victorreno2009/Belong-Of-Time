extends Node2D
var contador = 0
func _process(delta):
	contador+=0.05
	$Portal.scale.x=contador
	$Portal.scale.y=contador
	if (contador >= 30):
		get_tree().change_scene("res://Cenas/Mapa nikolas tesla.tscn")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
