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



func PlayGlitchBG():
	Glitch_BG.play("Gltich")
	await Glitch_BG.animation_finished
	Glitch_BG.play("RESET")
	await  Glitch_BG.animation_finished



