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

#Initialize
func _ready():
	get_tree().paused = false
	RenderingServer.set_default_clear_color(Color.BLACK)
	WalkingSoundEfx.stop()
	JumpSoundEfx.stop()
	DeathSound.stop()
	Level1Bgm.stop()
	GameOverBgm.play()
	HorrorBgm.stop()


func _input(_event):
	_apply_input()

func _Restart_over():
	get_tree().change_scene_to_file("res://Sceans/Level1.tscn")
func _action():
	call_deferred("_Restart_over")
	LevelFade._fade_from_black()

func _apply_input():
	if Input.is_action_just_released("Enter"):
		GameOverBgm.stop()
		Click.play()
		await get_tree().create_timer(1).timeout
		_action()
