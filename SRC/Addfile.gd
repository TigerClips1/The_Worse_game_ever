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

extends Node
var addhorror : Horror
var source_path_image = "res://ASSETS/Misc/HELPME.png"
var file_Image := FileAccess.open(source_path_image, FileAccess.READ)
var destination_path_image = OS.get_executable_path().get_base_dir() + "/HELPME.png"
var buffer := file_Image.get_buffer(file_Image.get_length())


func add_File():
	addhorror.file = FileAccess.open(addhorror.destination_path, FileAccess.WRITE)
	addhorror.file.store_string(addhorror.data)
	addhorror.file.close()

func add_Image():
	var AddIMAGES = FileAccess.open(destination_path_image, FileAccess.WRITE)
	AddIMAGES.store_buffer(buffer)
	file_Image.close()
	AddIMAGES.close()
	#print("ADD")

func add_Files_GLITCH():
	addhorror.file2 = FileAccess.open(addhorror.destination_path2, FileAccess.WRITE)
	addhorror.file2.store_string(addhorror.data2)
	addhorror.file2.close()

func Apply_add_File_GLITCH():
	addhorror.file2.close()
	addhorror.file3 = FileAccess.open(addhorror.destination_path3, FileAccess.WRITE)
	addhorror.file3.store_string(addhorror.data3)
	addhorror.file3.close()

func add_File_GLITCH2():
	addhorror.file3.close()
	addhorror.file4 = FileAccess.open(addhorror.destination_path4, FileAccess.WRITE)
	addhorror.file4.store_string(addhorror.data4)
	addhorror.file4.close()
