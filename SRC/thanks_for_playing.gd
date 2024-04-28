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
@onready var error := $ERROR
@onready var glitch := $Glitch

const Back_Menu := preload("res://SRC/Credits.gd")
@export var menu:Back_Menu

func _ready():
	menu = Back_Menu.new()
	menu.exit_input()
	CreditMusic.stop()
	GltichNext.play()
	SPookey.autoplay = true
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(10).timeout
	_Load()
	await get_tree().create_timer(5).timeout
	_credit_move()

func _credit_move():
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	glitch.play("Cool_Dance")
	error.show()
	Events.delete()
	glitch.stop()
	get_tree().quit()
	LevelFade._fade_from_black()

func _Load():
	for x in menu.credit_horror:
		await  get_tree().create_timer(1).timeout
		DisplayServer.window_set_mode(x)
