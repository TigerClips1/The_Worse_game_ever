extends Node2D
@onready var box = $Box_area/Box



func _ready():
	add_to_group("Box_count")

func reload_scene_easter():
	call_deferred("_reload_scene_easter")

func _reload_scene_easter():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/end_cheat.tscn")

func _Troll_ending():
	reload_scene_easter()

func _on_box_area_area_entered(_area:Area2D):
	if Events.keys == 0:
		_Troll_ending()
	elif Events.keys <= 10:
		Events.Level_comepiled.emit()
	queue_free()
