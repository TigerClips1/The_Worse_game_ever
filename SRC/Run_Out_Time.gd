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

extends Control

func _ready():
	get_tree().paused = false
	RenderingServer.set_default_clear_color(Color.BLACK)
	WalkingSoundEfx.stop()
	Level1Bgm.stop()

func _input(_event):
	_apply_input()

func Back_to_start_over():
	get_tree().change_scene_to_file("res://Sceans/Level1.tscn")
func _action():
	call_deferred("Back_to_start_over")
	LevelFade._fade_from_black()

func _apply_input():
	if Input.is_action_just_released("Enter"):
		_action()
