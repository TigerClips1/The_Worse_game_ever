extends Node2D

func reload_scene():
	get_tree().change_scene_to_file("res://Sceans/lost_screen.tscn")

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		call_deferred("reload_scene")
