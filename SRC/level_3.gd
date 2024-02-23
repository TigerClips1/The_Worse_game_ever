extends Node2D

@export var next_level : PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.DARK_RED)
	Events.Level_comepiled.connect(_level_completed)

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_packed(next_level)

func _level_completed():
	if not next_level is PackedScene: return
	reload_scene()
