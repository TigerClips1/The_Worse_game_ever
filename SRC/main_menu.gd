extends Control

@onready var start = %Start

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	start.grab_focus()
	MenuMusic.autoplay = true

func _on_start_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/Level1.tscn")
	LevelFade._fade_from_black()

func _on_credits_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/credits.tscn")
	LevelFade._fade_from_black()

func _on_control_pressed():
	Click.play()
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/Game_control_screen.tscn")
	LevelFade._fade_from_black()


func _on_quit_pressed():
	Click.play()
	get_tree().quit()
