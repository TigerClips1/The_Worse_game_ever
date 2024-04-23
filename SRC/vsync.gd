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

@onready var vsync = $"."
@onready var vsync_check_box = $VBoxContainer/Vsync_Check_Box

func _ready():
	_check_Vsync()
	vsync_check_box.grab_focus()

func _check_Vsync():
	if DisplayServer.window_get_vsync_mode() == DisplayServer.VSYNC_ENABLED:
		vsync_check_box.set_pressed_no_signal(true)

func _on_check_box_toggled(toggled_on):
	if toggled_on:
		Click.play()
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
		print("On")
	else:
		Click.play()
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		print("Off")
