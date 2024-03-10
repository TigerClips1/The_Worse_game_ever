extends Area2D
@onready var key_art = $Key_art

func _on_body_entered(_body):
	key_art.hide()
	var keys = get_tree().get_nodes_in_group("Keys")
	if keys.size() == 1:
		Events.Level_comepiled.emit()
