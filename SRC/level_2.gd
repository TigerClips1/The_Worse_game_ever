extends Node2D

@export var movementData : PlayerMovementData

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)

#func _on_spike_death_body_entered(body):
	#if body.name == "Player":
		#call_deferred("reload_scene")
#
#func reload_scene():
	#get_tree().change_scene_to_file("res://Sceans/lost_screen.tscn")
