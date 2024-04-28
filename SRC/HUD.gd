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

extends CanvasLayer

@onready var hud_counter := %Hud_counter

var Keyss:int = 0

func _keyss():
	hud_counter.text = str(Keyss)

func _on_key_cellected():
	Keyss += 1
	_keyss()

func reload_scene_easter():
	call_deferred("_reload_scene_easter")

func _reload_scene_easter():
	get_tree().change_scene_to_file("res://Sceans/Cheat_Ending.tscn")

func Apply_Troll_ending():
	reload_scene_easter()

func _on_box_key_count():
	if Keyss != 4 and Keyss != 5 and Keyss != 7 and Keyss != 19:
		Apply_Troll_ending()
	elif Keyss == 4 or  Keyss == 5 or Keyss == 7 or Keyss == 19:
		WinSoundEfx.play()
		Events.level_completed.emit()
	queue_free()

func _on_keys_1_key_collected() -> void:
	Keyss += 1
	_keyss()


func _on_key_1_key_collected() -> void:
	Keyss += 1
	_keyss()
