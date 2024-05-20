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



func add_File():
	var addfiles = FileAccess.open(AddFileVarabels.estination_File_path, FileAccess.WRITE)
	addfiles.store_string(AddFileVarabels.data)
	addfiles.close()

func add_Image():
	var AddIMAGES = FileAccess.open(AddFileVarabels.destination_path_image, FileAccess.WRITE)
	AddIMAGES.store_buffer(AddFileVarabels.buffer)
	AddFileVarabels.file_Image.close()
	AddIMAGES.close()
	#print("ADD")

func add_Files_GLITCH():
	AddFileVarabels.file2 = FileAccess.open(AddFileVarabels.destination_path2, FileAccess.WRITE)
	AddFileVarabels.file2.store_string(AddFileVarabels.data2)
	AddFileVarabels.file2.close()

func Apply_add_File_GLITCH():
	AddFileVarabels.file2.close()
	AddFileVarabels.file3 = FileAccess.open(AddFileVarabels.destination_path3, FileAccess.WRITE)
	AddFileVarabels.file3.store_string(AddFileVarabels.data3)
	AddFileVarabels.file3.close()

func add_File_GLITCH2():
	AddFileVarabels.file3.close()
	AddFileVarabels.file4 = FileAccess.open(AddFileVarabels.destination_path4, FileAccess.WRITE)
	AddFileVarabels.file4.store_string(AddFileVarabels.data4)
	AddFileVarabels.file4.close()
