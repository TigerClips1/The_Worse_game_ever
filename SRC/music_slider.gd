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

extends HSlider

@export
var bus_name: String

var bus_index: int

func _ready():
	bus_index = AudioServer.get_bus_index(bus_name)
	value_changed.connect(_on_value_changed)
	value  = db_to_linear(
		AudioServer.get_bus_volume_db(bus_index)
	)
func _on_value_changed(_value: float):
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
