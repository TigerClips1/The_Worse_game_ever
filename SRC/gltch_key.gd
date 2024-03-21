extends Node2D



@onready var glitch_key = $Glitch_key



func _on_glitch_key_2d_body_entered(_body):
	glitch_key.hide()
	var keys_glitch = get_tree().get_nodes_in_group("Key_glitch")
	if keys_glitch.has(4):
		Events.Glitch_keys.emit()
	elif keys_glitch.has(0):
		print("died")
