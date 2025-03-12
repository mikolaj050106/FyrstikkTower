extends PathFollow2D
var speed = 150

var enemyHealth = 1
func _process(delta):
	progress += speed * delta

	if progress >= 1300:
		var main = get_node("/root/Main")
		main.health -= 10
		get_node("/root/Main/Label").text = str(main.health)
		if main.health <= 0:
			get_node("/root/Main/Label").text = "Game over!"
		queue_free()
	if enemyHealth < 0:
		queue_free()
