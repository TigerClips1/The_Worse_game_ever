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
	MenuMusic.stop()
	CreditMusic.play()
	RenderingServer.set_default_clear_color(Color.BLACK)
	_Load()
	await get_tree().create_timer(5).timeout
	Change_credit_Next()

func reload_scene():
	call_deferred("change_Credits")

func change_Credits():
	get_tree().change_scene_to_packed(next_level)

func Change_credit_Next():
	if not next_level is PackedScene: return
	await  LevelFade._fade_to_black()
	reload_scene()
	LevelFade._fade_from_black()

func _Load():
	for x in menu.credit_horror:
			await  get_tree().create_timer(1).timeout
			DisplayServer.window_set_mode(x)
