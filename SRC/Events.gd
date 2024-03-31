extends Node

signal  Level_comepiled
signal  Glitch_keys
signal gained_keys(int)
signal gain_box(int)

var keys : int
var Box : int

var player : Player

func _gain_keys(keys_gain: int):
    keys += keys_gain
    emit_signal("gained_keys", keys_gain)
    print(keys)

func _gain_box(Box_gain: int):
    Box += Box_gain
    emit_signal("gain_box", Box_gain)
    print(Box_gain)

func _gain_box_Lose(Box_gain_lose: int):
    emit_signal("gain_box", Box_gain_lose)
    print(Box_gain_lose)