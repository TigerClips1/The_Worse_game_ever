extends AnimatedSprite2D

@onready var death = $"."

func _play():
	death.play("Death")
	await death.animation_finished

func _restore():
	death.play("Restore")
	await death.animation_finished
