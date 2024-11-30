extends CharacterBody2D

@export var speed = 300.0

func _physics_process(delta: float) -> void:
	velocity.x = Input.get_axis("left","right")
	move_and_collide(velocity * delta * speed)
