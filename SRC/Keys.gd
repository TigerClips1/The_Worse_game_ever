extends Node2D
@onready var area_2d = $Area2D
@onready var key_art = $Key_art
@onready var area = $Area2D/Area

var score_keys = 0

func _on_area_2d_body_entered(_body):
	area.disabled = true
	key_art.hide()
	if score_keys == OK:
		score_keys += 1
	else:
		print("WIN")
		Events.Level_comepiled.emit()
	print(score_keys)
