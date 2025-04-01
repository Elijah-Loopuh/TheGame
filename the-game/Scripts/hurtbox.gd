extends Area2D

signal collided

func _physics_process(delta: float) -> void:
	if has_overlapping_bodies():
		emit_signal("collided")
