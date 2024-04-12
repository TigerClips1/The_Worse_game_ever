extends Node2D

@onready var glitch_key = $Glitch_key
@onready var glitch_key_a_nmie = $Glitch_Key_ANmie
@onready var glitch_key_2d = $Glitch_Key_2D

signal glitch_key_Cellected

func _on_glitch_key_2d_body_entered(_body):
	glitch_key_a_nmie.play("Glitch_key")
	#KeyPickupSounds.play()
	emit_signal("glitch_key_Cellected")
	glitch_key_2d.set_collision_mask_value(2, false)
	queue_free()
