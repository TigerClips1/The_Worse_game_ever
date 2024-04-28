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

#Initialize
extends Control

@onready var start := %Start

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	start.grab_focus()
	MenuMusic.autoplay = true

func _on_start_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/Level1.tscn")
	LevelFade._fade_from_black()

func _on_credits_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/credits.tscn")
	LevelFade._fade_from_black()

func _on_control_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/Game_control_screen.tscn")
	LevelFade._fade_from_black()

func _on_quit_pressed():
	Click.play()
	get_tree().quit()

func _on_options_pressed():
	Click.play()
	get_tree().change_scene_to_file("res://Sceans/setting.tscn")

func _on_v_box_container_mouse_entered():
	Click.play()

func _on_v_box_container_mouse_exited():
	Click.play()

func _on_v_box_container_focus_entered():
	Click.play()
