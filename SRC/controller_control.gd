"""
*********************************************************
*               This file is part of                    #
*                The Worse Game Ever                    #
*   https://github.com/TigerClips1/The_Worse_game_ever	#
*           *********************************           #
*           * Copyright (©) 2024 TigerClips1 *          #
*           *********************************           #
*                                                       #
*                                                       #
******************************************************* #
"""

extends Control

@onready var back := %Back

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	back.grab_focus()
	MenuMusic.autoplay = true

func _on_back_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/Game_control_screen.tscn")
	LevelFade._fade_from_black()
