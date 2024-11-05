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

@onready var area_2d = $Area2D

@warning_ignore("unused_signal")
signal key_Collected

func _on_area_2d_body_entered(_body:Node2D):
	KeyPickupSounds.play()
	emit_signal("key_Collected")
	area_2d.set_collision_mask_value(2, false)
	queue_free()
