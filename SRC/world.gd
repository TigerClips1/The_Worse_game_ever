extends Node2D

@export var next_level : PackedScene

@onready var winning_box = $Winning_box


func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_packed(next_level)


func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	Events.Level_comepiled.connect(_level_completed)
	Events.Door_unlock.connect(_door_ulock)


func _level_completed():
		winning_box.show()

func _door_ulock():
	reload_scene()
