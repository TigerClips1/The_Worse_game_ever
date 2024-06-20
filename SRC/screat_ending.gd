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

@onready var Glitch_BG := $Glich
@onready var spookey = $Player_GLitch/Spookey
@onready var random_timer = $Player_GLitch/RandomTimer
#@onready var time = random_timer.time_left
func _ready():
	#DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	RenderingServer.set_default_clear_color(Color.BLACK)
	PlayGlitchBG()
	#print(time)
func PlayGlitchBG():
	Glitch_BG.play("Gltich")
	await Glitch_BG.animation_finished
	Glitch_BG.play("RESET")
	await  Glitch_BG.animation_finished

func _on_random_timer_timeout():
	spookey.play()
