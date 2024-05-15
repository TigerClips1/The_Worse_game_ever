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

var should_show:bool = true

signal  level_completed
@export var addhorror : Horror
var  Defulit = OS.get_executable_path().get_base_dir() + "/DIE.txt"

func delete():
	DirAccess.remove_absolute("destination_pathall")

func add_all_Glitch():
	if should_show == true:
		OS.shell_show_in_file_manager(Defulit, true)
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED)
		Addfile.add_Files_GLITCH()
		Addfile.Apply_add_File_GLITCH()
		Addfile.add_File_GLITCH2()
		should_show = false
		return

func timer():
	if should_show == true:
		await  get_tree().create_timer(10).timeout
		should_show = false
		return

