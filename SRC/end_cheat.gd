extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	WinSoundEfx.stop()
	Level1Bgm.stop()
	WalkingSoundEfx.stop()
	JumpSoundEfx.stop()
	DeathSound.stop()
	RenderingServer.set_default_clear_color(Color.BLACK)
	Addfile._add_File()
	await get_tree().create_timer(2).timeout
	OS.shell_open("https://www.youtube.com/watch?v=EpX1_YJPGAY")
	get_tree().quit()

