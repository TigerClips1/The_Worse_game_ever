extends Node2D

@export var next_level : PackedScene

func _ready():
	RenderingServer.set_default_clear_color(Color.CRIMSON)
	Events.Level_comepiled.connect(_level_completed)

func _input(_event):
	if _event is InputEventKey and _event.pressed:
		if _event.keycode == KEY_ALT:
			if _event.shift_pressed:
				get_tree().paused = true
				await  LevelFade._fade_to_black()
				reload_scene_screat()
				LevelFade._fade_from_black()
				GltichNext.play()
				get_tree().paused = false

func reload_scene():
	call_deferred("_reload_scene")

func reload_scene_screat():
	call_deferred("_reload_scene_Screat")

func _reload_scene():
	get_tree().change_scene_to_packed(next_level)

func _reload_scene_Screat():
	get_tree().change_scene_to_file("res://Sceans/screat_ending.tscn")

func _level_completed():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	reload_scene()
	LevelFade._fade_from_black()
