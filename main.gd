extends Node2D

var health = 100

func _process(delta):
	get_node("/root/Main/Label").text = str(health)
