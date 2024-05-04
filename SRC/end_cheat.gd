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

#InitLize
func _ready():
	WinSoundEfx.stop()
	Level1Bgm.stop()
	WalkingSoundEfx.stop()
	JumpSoundEfx.stop()
	DeathSound.stop()
	RenderingServer.set_default_clear_color(Color.BLACK)
	print("Add")
	Addfile.add_File()
	await get_tree().create_timer(2).timeout
	#open a link to the browser
	OS.shell_open("https://www.youtube.com/watch?v=EpX1_YJPGAY")
	get_tree().quit()
