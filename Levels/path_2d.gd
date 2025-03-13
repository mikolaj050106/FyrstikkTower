extends Path2D

var enemycounttest = 6 ##wave 1

@export var enemy_scene: PackedScene  #enemy_scene er definert inne i inspektøren

func _ready():
	defines.remaining_enemy += enemycounttest 
	print(enemycounttest)
	print(defines.remaining_enemy)
	spawn(enemycounttest)

func spawn(enemycounttest):
	if enemy_scene: #Hvis enemy_scene finnes
		if defines.wave == 2:
			enemycounttest = 10
			defines.remaining_enemy = enemycounttest
		for i in range(enemycounttest):
			await get_tree().create_timer(1).timeout #1 sek pause mellom hvert spawn
			var enemy = enemy_scene.instantiate() #Enemy er en ny forekomst av enemyTest scenen
			add_child(enemy) #Legg til enemy som en child
			enemy.progress = 0 #Enemy starter fra 0 på path2d
