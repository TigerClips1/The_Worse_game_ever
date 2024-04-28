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

extends CharacterBody2D

const SPEED = 20

@onready var player_pos
@onready var player_target

@onready  var player = get_parent().get_parent().get_node("Player_GLitch")

func _physics_process(_delta: float) -> void:
	player_pos = player.postion
	player_target = (player_pos - position).normalized()
	if position.distance_to(player_pos) > 3:
		move_and_slide()
