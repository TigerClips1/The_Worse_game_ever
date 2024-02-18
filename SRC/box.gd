extends Node2D



func _on_area_2d_body_entered(_body: Node2D) -> void:
	queue_free()
	var keys = get_tree().get_nodes_in_group("Keys")
	if keys.size() == 1:
		Events.Level_comepiled.emit()
