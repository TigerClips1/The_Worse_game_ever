extends Area2D

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/level_2.tscn")

func _on_body_entered(_body):
	queue_free()
	reload_scene()
