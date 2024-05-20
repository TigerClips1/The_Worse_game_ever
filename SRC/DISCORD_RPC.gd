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

func _process(_delta):
	DiscordRPC.run_callbacks()

func _ready():
	Discord()

func Discord():
	DiscordRPC.app_id = 1240064180711587860
	DiscordRPC.get_current_user()
	DiscordRPC.state = "Playing dumbest game ever made in man kind"
	DiscordRPC.start_timestamp = int(Time.get_unix_time_from_system()) # "02:46 elapsed"
	DiscordRPC.refresh() # Always refresh after changing the values!
