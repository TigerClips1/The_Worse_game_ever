extends StaticBody2D



func _on_area_2d_body_entered(_body):
	if self.name in Events.key_Founded:
		queue_free()
		print("Key added")
	if  not self.name in Events.key_Founded:
		return
