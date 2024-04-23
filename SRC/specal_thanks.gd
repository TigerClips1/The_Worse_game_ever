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

@export var next_level : PackedScene
@onready var label = $"SEVMUCBNRSBJVFMgVE9PSyBNRQ=="

func _ready():
	CreditsMusic.stop()
	GltichNext.play()
	SPookey.play()
	RenderingServer.set_default_clear_color(Color.BLACK)
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	label.show()
	await get_tree().create_timer(2).timeout
	label.hide()
	await get_tree().create_timer(5).timeout
	Horror_credits_Next()

func _return():
	await  LevelFade._fade_to_black()
	call_deferred("_Back_main_menu")
	CreditsMusic.stop()
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	LevelFade._fade_from_black()

func _input(_event):
	exit_input()

func exit_input():
	if Input.is_action_just_released("Exit"):
		_return()

func Change_Horror_scene():
	call_deferred("Horror_Credits_load")

func Horror_Credits_load():
	get_tree().change_scene_to_packed(next_level)

func Horror_credits_Next():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Change_Horror_scene()
	LevelFade._fade_from_black()
