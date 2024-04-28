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

extends Label

@export var next_level : PackedScene
const Back_Menu := preload("res://SRC/Credits.gd")
@export var menu:Back_Menu

func _ready():
	menu = Back_Menu.new()
	menu.exit_input()
	RenderingServer.set_default_clear_color(Color.BLACK)
	CreditMusic.autoplay = true
	_Load()
	await get_tree().create_timer(5).timeout
	credit_move()

func Chnage_Credit_scene():
	call_deferred("Change_Credits_scene")

func Change_Credits_scene():
	get_tree().change_scene_to_packed(next_level)

func credit_move():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Chnage_Credit_scene()
	LevelFade._fade_from_black()

func _Load():
	for x in menu.credit_horror:
		await  get_tree().create_timer(1).timeout
		DisplayServer.window_set_mode(x)
