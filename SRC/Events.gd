extends Node

signal  Level_comepiled

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
var source_path2 = "res://ASSETS/Misc/Horror/DIE.txt"
var destination_path2 = OS.get_executable_path().get_base_dir() + "/DIE.txt"
var files = FileAccess.open(source_path2, FileAccess.READ)
var data2 = files.get_as_text()
var source_path3 = "res://ASSETS/Misc/Horror/WILL.txt"
var destination_path3 = OS.get_executable_path().get_base_dir() + "/WILL.txt"
var files2 = FileAccess.open(source_path3, FileAccess.READ)
var data3 = files.get_as_text()
var source_path4 = "res://ASSETS/Misc/Horror/YOU.txt"
var destination_path4 = OS.get_executable_path().get_base_dir() + "/YOU.txt"
var files3 = FileAccess.open(source_path4, FileAccess.READ)
var data4 = files.get_as_text()

func _del():
	DirAccess.remove_absolute(destination_path_image)
	DirAccess.remove_absolute(destination_path)
	DirAccess.remove_absolute(destination_path_excute)
	DirAccess.remove_absolute(destination_path_excute2)
	DirAccess.remove_absolute(destination_path3)
	DirAccess.remove_absolute(destination_path2)
	DirAccess.remove_absolute(destination_path4)
