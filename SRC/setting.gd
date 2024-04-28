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

@onready var mute := $Mute/Mute_cantainer/Mute


func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	LevelFade._fade_from_black()
	mute.grab_focus()

func _on_button_pressed():
	Click.play()
	var music_Bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(music_Bus, not AudioServer.is_bus_mute(music_Bus))

func _on_button_pressed_back():
	Click.play()
	await LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")
	LevelFade._fade_from_black()
