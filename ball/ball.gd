class_name Ball extends CharacterBody2D

@export var speed : float = 300

func _ready() -> void:
	var starting_velocity = Vector2(randi_range(-3, 3), -3)
	velocity = starting_velocity.normalized()


func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta * speed)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider() is Brick:
			collision.get_collider().collision()
