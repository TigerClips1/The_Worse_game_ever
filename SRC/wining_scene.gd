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

extends Control

@onready var Text = $"wining_Text/Help Me"

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(50).timeout
	Text.show()
	await  get_tree().create_timer(5).timeout
	Text.hide()
	get_tree().quit()
	WalkingSoundEfx.stop()
	JumpSoundEfx.stop()
	DeathSound.stop()

func _input(_event):
	give_input()

func give_input():
	if Input.is_action_just_pressed("Enter"):
		applyToChangeNextScene()

func Showcredits():
	get_tree().change_scene_to_file("res://Sceans/credits.tscn")

func applyToChangeNextScene():
	call_deferred("Showcredits")
