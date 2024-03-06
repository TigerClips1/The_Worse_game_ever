extends CanvasLayer

@onready var animation_player = $AnimationPlayer

func _fade_from_black():
	animation_player.play("Fade_from_black")
	await  animation_player.animation_finished

func _fade_to_black():
	animation_player.play("Fade")
	await  animation_player.animation_finished
