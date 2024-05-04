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
@export var addhorror : Horror
func add_File():
	addhorror.file = FileAccess.open(addhorror.destination_path, FileAccess.WRITE)
	addhorror.file.store_string(addhorror.data)
	addhorror.file.close()

func add_Image():
	addhorror.file_Image = FileAccess.open(addhorror.destination_path_image, FileAccess.WRITE)
	addhorror.file_Image.store_buffer(addhorror.buffer)
	addhorror.file_Image.close()

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
