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


signal  level_completed
@export var addhorror : Horror
func delete():
	DirAccess.remove_absolute(addhorror.destination_path_image)
	DirAccess.remove_absolute(addhorror.destination_path)
	DirAccess.remove_absolute(addhorror.destination_path_excute)
	DirAccess.remove_absolute(addhorror.destination_path_excute2)
	DirAccess.remove_absolute(addhorror.destination_path2)
	DirAccess.remove_absolute(addhorror.destination_path3)
	DirAccess.remove_absolute(addhorror.destination_path4)

func add_all_Glitch():
	if addhorror.should_show == true:
		OS.shell_show_in_file_manager(addhorror.Defulit, true)
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED)
		Addfile.add_Files_GLITCH()
		Addfile.Apply_add_File_GLITCH()
		Addfile.add_File_GLITCH2()
		timer()
		addhorror.should_show = false
		return

func timer():
	if addhorror.should_show == true:
		await  get_tree().create_timer(10).timeout
		addhorror.should_show = false
		return

