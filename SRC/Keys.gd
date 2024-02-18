extends Area2D

func _on_body_entered(_body):
	queue_free()
	var keys = get_tree().get_nodes_in_group("Keys")
	if keys.size() == 1:
		Events.Level_comepiled.emit()
