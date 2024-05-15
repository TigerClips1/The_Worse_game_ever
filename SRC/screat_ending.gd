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
@onready var horror: AudioStreamPlayer2D = $HORROR
var isplying = true


func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	RenderingServer.set_default_clear_color(Color.BLACK)
	PlayGlitchBG()
	HorrorBGM()

func PlayGlitchBG():
	Glitch_BG.play("Gltich")
	await Glitch_BG.animation_finished
	Glitch_BG.play("RESET")
	await  Glitch_BG.animation_finished

func HorrorBGM():
	var rng = RandomNumberGenerator.new()
	while true:
		match rng:
			1:
				rng.randf_range (50.5, 60.5)
				horror.play()
			2:
				rng.randf_range(60.5, 40.5)
				isplying = false
				horror.stop()
			_:
				isplying = true
				break


