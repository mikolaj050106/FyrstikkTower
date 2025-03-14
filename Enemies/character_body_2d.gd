extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

func _process(_delta):
	animated_sprite.play("default")
