extends Control

@onready var back_main_menu = %Back_main_menu

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	back_main_menu.grab_focus()
	MenuMusic.autoplay = true

func _on_back_main_menu_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")
	LevelFade._fade_from_black()

func _on_next_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/controller_control.tscn")
	LevelFade._fade_from_black()
