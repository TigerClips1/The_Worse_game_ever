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

@onready var glitch_key := $Glitch_key
@onready var glitch_key_a_nmie := $Glitch_Key_ANmie
@onready var glitch_key_2d := $Glitch_Key_2D

@warning_ignore("unused_signal")
signal glitch_key_Collected

func _on_glitch_key_2d_body_entered(_body):
	glitch_key_a_nmie.play("Glitch_key")
	#KeyPickupSounds.play()
	emit_signal("glitch_key_Collected")
	glitch_key_2d.set_collision_mask_value(2, false)
	queue_free()
