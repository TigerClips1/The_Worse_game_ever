extends Node2D
@onready var box = $Box_area/Box

var keyss = 4

func reload_scene_easter():
	call_deferred("_reload_scene_easter")

func _reload_scene_easter():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/end_cheat.tscn")

func _Troll_ending():
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	LevelFade._fade_from_black()
	get_tree().paused = false
	reload_scene_easter()
	OS.shell_open("https://www.youtube.com/watch?v=EpX1_YJPGAY")
	await  get_tree().create_timer(3).timeout
	get_tree().quit()

##func _on_area_2d_body_entered(_body: Node2D) -> void:
	#box.hide()
	#var Box = get_tree().get_nodes_in_group("Keys")
	#if Box.size() >= 1:
		#Events.Level_comepiled.emit()
