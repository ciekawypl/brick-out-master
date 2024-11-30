extends Node2D

@export var brick_scene : PackedScene

func _ready() -> void:
	for i in range(18):
		for j in range(6):
			create_brick(32 + 64*i, 32 + 32*j)
		#create_brick(32 + 64*i, 32)

func create_brick(x, y):
	var new_brick : Brick = brick_scene.instantiate()
	new_brick.global_position = Vector2(x, y)
	add_child(new_brick)
