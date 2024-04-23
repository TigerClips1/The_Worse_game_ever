"""
*********************************************************
*               This file is part of                    #
*                The Worse Gme Ever                     #
*   https://github.com/TigerClips1/The_Worse_game_ever	#
*           *********************************           #
*           * Copyright (©) 2024 TigerClips1 *          #
*           *********************************           #
*                                                       #
*                                                       #
******************************************************* #
"""

extends Node2D

@export var End_level : PackedScene

func _ready():
	RenderingServer.set_default_clear_color(Color.CRIMSON)
	Events.Level_comepiled.connect(_level_completed)

func _input(_event):
	if _event is InputEventKey and _event.pressed:
		if _event.keycode == KEY_ALT:
			if _event.shift_pressed:
				get_tree().paused = true
				await  LevelFade._fade_to_black()
				Change_scene_screat()
				LevelFade._fade_from_black()
				GltichNext.play()
				get_tree().paused = false

func Apply_Win_scene():
	call_deferred("Change_Win_scene")

func Change_scene_screat():
	call_deferred("Change_scene_screat_Main")

func Change_Win_scene():
	get_tree().change_scene_to_packed(End_level)

func Change_scene_screat_Main():
	get_tree().change_scene_to_file("res://Sceans/screat_ending.tscn")

func _level_completed():
	if not End_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Apply_Win_scene()
	LevelFade._fade_from_black()
