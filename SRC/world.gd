extends Node2D

@export var next_level : PackedScene

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_packed(next_level)

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	Events.Level_comepiled.connect(_level_completed)

func _level_completed():
	if not next_level is PackedScene: return
	reload_scene()

func _start_over():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/Level1.tscn")
func _action():
	call_deferred("_start_over")
