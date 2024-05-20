"""
*********************************************************
*               This file is part of                    #
*                The Worse Game Ever                    #
*   https://github.com/TigerClips1/The_Worse_game_ever	#
*           *********************************           #
*           * Copyright (©) 2024 TigerClips1 *          #
*           *********************************           #
*                                                       #
*                                                       #
******************************************************* #
"""

extends Node2D

var source_path_image := "res://ASSETS/Misc/HELPME.png"
var source_path:String = "res://ASSETS/Misc/d2h5IHlvdSBjaGVhdA==.txt"
var file_Image := FileAccess.open(source_path_image, FileAccess.READ)
var destination_path_image = OS.get_executable_path().get_base_dir() + "/HELPME.png"
var buffer := file_Image.get_buffer(file_Image.get_length())
var destination_File_path:String  = OS.get_executable_path().get_base_dir() + "/d2h5IHlvdSBjaGVhdA==.txt"
var file := FileAccess.open(source_path, FileAccess.READ)
var data := file.get_as_text()
var source_path2:String = "res://ASSETS/Misc/Horror/YOU.txt"
var source_path3:String = "res://ASSETS/Misc/Horror/WILL.txt"
var source_path4:String = "res://ASSETS/Misc/Horror/DIE.txt"
var  destination_path2 = OS.get_executable_path().get_base_dir() + "/YOU.txt"
var  destination_path3 = OS.get_executable_path().get_base_dir() + "/WILL.txt"
var  destination_path4 = OS.get_executable_path().get_base_dir() + "/DIE.txt"
var file2 := FileAccess.open(source_path2, FileAccess.READ)
var file3 := FileAccess.open(source_path3, FileAccess.READ)
var file4 := FileAccess.open(source_path4, FileAccess.READ)
var file5 := FileAccess.open(source_path, FileAccess.READ)
var data2:String = file2.get_as_text()
var data3:String = file3.get_as_text()
var data4:String = file4.get_as_text()
