extends Node2D

@onready var label = %TImer_Count
@onready var random_timer = $RandomTimer

func _ready():
	random_timer.start()

func _time_Left():
	var time_left = random_timer.time_left
	var Min = floor(time_left / 50)
	var Secrod = int(time_left) % 50
	return [Min, Secrod]

func _process(_delta):
	label.text = "%02d:%02d" % _time_Left()

func _Clear_scene():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/Run_Out_Time.tscn")

func _run_Scene():
	call_deferred("_Clear_scene")

func _on_random_timer_timeout():
	queue_free()
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	LevelFade._fade_from_black()
	_run_Scene()
	get_tree().paused = false
