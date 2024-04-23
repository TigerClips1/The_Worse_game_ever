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

extends CanvasLayer

@onready var hud_counter = %Hud_counter

var Keyss:int = 0

func _keyss():
	hud_counter.text = str(Keyss)

func _on_key_cellected():
	Keyss += 1
	_keyss()

func reload_scene_easter():
	call_deferred("_reload_scene_easter")

func _reload_scene_easter():
	get_tree().change_scene_to_file("res://Sceans/end_cheat.tscn")

func Apply_Troll_ending():
	reload_scene_easter()

func _on_box_key_count():
	if Keyss != 4 and Keyss != 5 and Keyss != 7 and Keyss != 16:
		Apply_Troll_ending()
	elif Keyss == 4 or  Keyss == 5 or Keyss == 7 or Keyss == 16:
		WinSoundEfx.play()
		Events.Level_comepiled.emit()
	queue_free()

func _on_node_2d_key_cellected():
	Keyss += 1
	_keyss()

func _on_keys_level_3_cellcted():
	Keyss += 1
	_keyss()

func _on_key_cellected_level4():
	Keyss += 1
	_keyss()
