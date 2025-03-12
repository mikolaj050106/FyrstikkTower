extends Sprite2D


var attackSpeed = 100
var dir : float
var spawnPos : Vector2

var enemy = preload("res://Enemies/enemy_test.tscn")
func _process(delta: float) -> void:	
	global_position = spawnPos
	
