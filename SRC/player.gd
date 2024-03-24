extends CharacterBody2D

@export var movementData : _PlayerMovementData

var air_jump = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var is_alive = true
var input_enabled = true
var level_Time = 0.0
var start_level_msc = 0.0
@onready var player_spirte = $Player_Spirte
@onready var coyote_jump_timer = $Coyote_jump_Timer
@onready var death = $Death


func _physics_process(delta):
	Apply_Gravaty(delta)
	Handlejump()
	var input_axis = Input.get_axis("Left_arrow", "Right_arrow")
	Apply_Actlation(input_axis, delta)
	Handile_Air_acceleration(input_axis, delta)
	Apply_friction(input_axis, delta)
	Apply_air_resistance(input_axis, delta)
	var was_on_floor = is_on_floor()
	move_and_slide()
	var just_left_ledge = was_on_floor and not is_on_floor() and velocity.y >= 0
	if just_left_ledge:
		coyote_jump_timer.start()
	update_Anmation(input_axis)

func Apply_Gravaty(delta):
	if not is_on_floor():
		velocity.y += gravity * movementData.Gravity_scale * delta

func Handlejump():
	if is_on_floor(): air_jump = true
	if is_on_floor() or coyote_jump_timer.time_left > 0.0:
		if Input.is_action_just_pressed("Space"):
				velocity.y = movementData.jump_velocity
	elif not is_on_floor():
			if Input.is_action_just_pressed("Space") and  velocity.y < movementData.jump_velocity / 2:
				velocity.y = movementData.jump_velocity / 2
			if Input.is_action_just_pressed("Space") and air_jump:
				velocity.y = movementData.jump_velocity * 0.8
				air_jump = false

func Apply_Actlation(input_axis, delta):
		if not is_on_floor(): return
		if input_axis != 0:
			velocity.x = move_toward(velocity.x, movementData.speed * input_axis, movementData.acceleration * delta)

func Handile_Air_acceleration(input_axis, delta):
		if is_on_floor(): return
		if input_axis != 0:
			velocity.x = move_toward(velocity.x, movementData.speed * input_axis, movementData.Air_acceleration * delta)

func Apply_friction(input_axis, delta):
		if input_axis == 0 and is_on_floor():
			velocity.x = move_toward(velocity.x, 0, movementData.friction * delta)

func Apply_air_resistance(input_axis, delta):
	if input_enabled:
		if input_axis == 0 and not is_on_floor():
			velocity.x =  move_toward(velocity.x, 0, movementData.Air_resistance * delta)

func update_Anmation(input_axis):
	if input_axis != 0:
		player_spirte.flip_h = input_axis < 0
		player_spirte.play("Walk")
	else:
		player_spirte.play("idle")

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/lost_screen.tscn")

func _on_hazard_detector_area_entered(_area):
	DeathSound.play()
	DeathSound.autoplay = true
	get_tree().paused = true
	player_spirte.hide()
	await death._play()
	await  LevelFade._fade_to_black()
	reload_scene()
	#AddFile._loading_file()
	LevelFade._fade_from_black()

func reload_scene_easter():
	call_deferred("_reload_scene_easter")

func _reload_scene_easter():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/end_cheat.tscn")

func _on_hazard_easter_egg_area_entered(_area):
	await  LevelFade._fade_to_black()
	reload_scene_easter()
	LevelFade._fade_from_black()
	OS.shell_open("https://www.youtube.com/watch?v=EpX1_YJPGAY")
	await  get_tree().create_timer(5).timeout
	get_tree().quit()

func _input(_event):
	_apply_input()

func _Mainmenu():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")

func _Exit_mainmenu():
	call_deferred("_Mainmenu")

func _apply_input():
	if Input.is_action_just_released("Exit"):
		_Exit_mainmenu()
