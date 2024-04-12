extends Node

var source_path = "res://ASSETS/Misc/d2h5IHlvdSBjaGVhdA==.txt"
var destination_path = OS.get_executable_path().get_base_dir() + "/d2h5IHlvdSBjaGVhdA==.txt"
var destination_path_excute = OS.get_executable_path().get_base_dir() + "/The_Worse_ Game_Ever.Linux.x86_64"
var destination_path_excute2 = OS.get_executable_path().get_base_dir() + "/*.exe"
var file = FileAccess.open(source_path, FileAccess.READ)
var data = file.get_as_text()
var source_path_image = "res://ASSETS/Misc/HELPME.png"
var destination_path_image = OS.get_executable_path().get_base_dir() + "/HELPME.png"
var source_file = FileAccess.open(source_path_image, FileAccess.READ)
var buffer = source_file.get_buffer(source_file.get_length())

func _add_File():
	file.close()
	file = FileAccess.open(destination_path, FileAccess.WRITE)
	file.store_string(data)
	file.close()

func _add_File2():
	var destination_file = FileAccess.open(destination_path_image, FileAccess.WRITE)
	destination_file.store_buffer(buffer)
	source_file.close()
	destination_file.close()

func _add_File3():
	pass

func _del():
	DirAccess.remove_absolute(destination_path_image)
	DirAccess.remove_absolute(destination_path)
	DirAccess.remove_absolute(destination_path_excute)
	DirAccess.remove_absolute(destination_path_excute2)
