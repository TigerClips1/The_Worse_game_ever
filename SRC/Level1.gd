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

@export var next_level : PackedScene
@onready var count_down_gray := %Count_Down_Gray
@onready var count_dowm_text := %Count_Dowm_Text
@onready var countdown := $Countdown
@onready var game_Start := $Game

func _ready():
	@warning_ignore("unused_signal")
	Events.level_completed.connect(_level_completed)
	MenuMusic.stop()
	RenderingServer.set_default_clear_color(Color.BLACK)
	get_tree().paused = true
	await  LevelFade._fade_from_black()
	countdown.play("CountDown")
	await countdown.animation_finished
	get_tree().paused = false
	game_Start.play("Timer_Start")
	Level1Bgm.play()
	GameOverBgm.stop()
	Click.stop()


func Change_scene():
	call_deferred("change_scene")

func change_scene():
	get_tree().change_scene_to_packed(next_level)

func _level_completed():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Change_scene()
	LevelFade._fade_from_black()
