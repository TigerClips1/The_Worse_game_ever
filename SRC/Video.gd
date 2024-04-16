extends Control

@onready var error_please_help_me = $"ERROR_PLEASE_HELP ME"

func _ready():
	error_please_help_me.play("Timer")

func _on_video_stream_player_finished():
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(5).timeout
	Events._del()
	get_tree().quit()
