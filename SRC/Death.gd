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

extends AnimatedSprite2D

@onready var death = $"."

func _play():
	death.play("Death")
	await death.animation_finished

func _restore():
	death.play("Restore")
	await death.animation_finished
