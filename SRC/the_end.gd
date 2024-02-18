extends Node2D

@export var next_level : PackedScene

func _ready():
	RenderingServer.set_default_clear_color(Color.CRIMSON)
