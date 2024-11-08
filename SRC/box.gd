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

extends Node2D

@warning_ignore("unused_signal")
signal key_Count
@onready var box_area  := $Box_area

func _on_box_area_area_entered(_area:Area2D):
	emit_signal("key_Count")
	box_area.set_collision_mask_value(6,false)
	WinSoundEfx.play()
	queue_free()
