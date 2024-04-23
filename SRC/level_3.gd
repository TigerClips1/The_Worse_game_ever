extends Node2D

@export var next_level : PackedScene

func _ready():
	RenderingServer.set_default_clear_color(Color.DARK_RED)
	Events.Level_comepiled.connect(_level_completed)

func Change_scene():
	call_deferred("change_scene")

func change_scene():
	get_tree().change_scene_to_packed(next_level)

func _level_completed():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Change_scene()
	LevelFade._fade_from_black()
