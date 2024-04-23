extends Node2D

# free the fake keys from memeory also kinda of an troll
func _on_area_2d_area_entered(_area:Area2D):
	queue_free()
