extends Node2D

@export var next_level : PackedScene
@onready var count_down_gray = %Count_Down_Gray
@onready var count_dowm_text = %Count_Dowm_Text
@onready var countdown = $Countdown
@onready var game_Start = $Game

func Change_scene_main():
	call_deferred("Change_scene")

func Change_scene():
	get_tree().change_scene_to_packed(next_level)

func _ready():
	MenuMusic.stop()
	Events.Level_comepiled.connect(_level_completed)
	RenderingServer.set_default_clear_color(Color.BLACK)
	get_tree().paused = true
	await  LevelFade._fade_from_black()
	countdown.play("CountDown")
	await countdown.animation_finished
	get_tree().paused = false
	game_Start.play("Timer_Start")
	Level1Bgm.play()
	GameOverBgm.stop()
	Click.stop()

func _level_completed():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Change_scene_main()
	LevelFade._fade_from_black()


func _start_over():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/Level1.tscn")

func _action():
	call_deferred("_start_over")
