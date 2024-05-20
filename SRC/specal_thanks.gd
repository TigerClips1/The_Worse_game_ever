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

@export var next_level : PackedScene
@onready var label := $"SEVMUCBNRSBJVFMgVE9PSyBNRQ=="
const Back_Menu := preload("res://SRC/Credits.gd")
@export var menu:Back_Menu

func _ready():
	menu = Back_Menu.new()
	menu.exit_input()
	CreditMusic.stop()
	GltichNext.play()
	SPookey.play()
	RenderingServer.set_default_clear_color(Color.BLACK)
	_Load()
	await get_tree().create_timer(1).timeout
	label.show()
	await get_tree().create_timer(2).timeout
	label.hide()
	await get_tree().create_timer(5).timeout
	Horror_credits_Next()

func Change_Horror_scene():
	call_deferred("Horror_Credits_load")

func Horror_Credits_load():
	get_tree().change_scene_to_packed(next_level)

func Horror_credits_Next():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Change_Horror_scene()
	LevelFade._fade_from_black()

func _Load():
	for Credits_Horror in menu.credit_horror:
			await  get_tree().create_timer(1).timeout
			DisplayServer.window_set_mode(Credits_Horror)
