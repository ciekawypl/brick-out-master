extends Area2D

signal ball_collision

func collision(body):
	if body is Ball:
		ball_collision.emit()
