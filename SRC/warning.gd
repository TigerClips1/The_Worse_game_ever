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

extends Container

func _ready():
	MenuMusic.play()
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(5).timeout
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Sceans/HeadPhone_Warning.tscn")
	LevelFade._fade_from_black()
