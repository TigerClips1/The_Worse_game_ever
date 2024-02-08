extends CharacterBody2D

const SPEED = 100.0
const ACCELERATION = 800.0
const friction = 1000.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	Apply_Gravaty(delta)
	Handlejump()
	var input_axis = Input.get_axis("ui_left", "ui_right")
	Apply_Actlation(input_axis, delta)
	Apply_friction(input_axis, delta)
	update_Anmation(input_axis)
	move_and_slide()

func Apply_Gravaty(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

func Handlejump():
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = JUMP_VELOCITY
	else:
		if Input.is_action_just_pressed("ui_accept") and  velocity.y < 0:
			velocity.y = JUMP_VELOCITY / 1

func Apply_Actlation(input_axis, delta):
	if input_axis != 0:
		velocity.x = move_toward(velocity.x, SPEED * input_axis, ACCELERATION * delta)

func Apply_friction(input_axis, delta):
	if input_axis == 0:
		velocity.x = move_toward(velocity.x, 0, friction * delta)
func update_Anmation(input_axis):
	if input_axis != 0:
		animated_sprite_2d.flip_h = input_axis < 0 
		animated_sprite_2d.play("walk")
	else:
		animated_sprite_2d.play("idle")

# TODO NAME = Godot 4 Tutorial - Heart Platformer P2 - Coyote Jump
# TIMESET = 1:29
