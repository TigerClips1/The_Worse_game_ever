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
#
##this would be change later where it only use 12 varables
#@export var source_path:String = "res://ASSETS/Misc/d2h5IHlvdSBjaGVhdA==.txt"
#@export  var destination_path:String  = OS.get_executable_path().get_base_dir() + "/d2h5IHlvdSBjaGVhdA==.txt"
#@export  var destination_path_excute:String  = OS.get_executable_path().get_base_dir() + "/The_Worse_ Game_Ever.Linux.x86_64"
#@export var destination_path_excute2:String  = OS.get_executable_path().get_base_dir() + "/*.exe"
#@onready var file := FileAccess.open(source_path, FileAccess.READ)
#@onready  var data:String = file.get_as_text()
#@export  var source_path_image :String = "res://ASSETS/Misc/HELPME.png"
#@export  var destination_path_image:String  = OS.get_executable_path().get_base_dir() + "/HELPME.png"
#@onready var source_file := FileAccess.open(source_path_image, FileAccess.READ)
#@onready  var buffer := source_file.get_buffer(source_file.get_length())
#@export  var should_show:bool = true
#
#func delete():
	#DirAccess.remove_absolute(destination_path_image)
	#DirAccess.remove_absolute(destination_path)
	#DirAccess.remove_absolute(destination_path_excute)
	#DirAccess.remove_absolute(destination_path_excute2)
	#destination_path = OS.get_executable_path().get_base_dir() + "/WILL.txt"
	#DirAccess.remove_absolute(destination_path)
	#destination_path =  OS.get_executable_path().get_base_dir() + "/DIE.txt"
	#DirAccess.remove_absolute(destination_path)
	#destination_path =  OS.get_executable_path().get_base_dir() + "/YOU.txt"
	#DirAccess.remove_absolute(destination_path)
#
#func add_all_Glitch():
	#if should_show == true:
		#destination_path = OS.get_executable_path().get_base_dir()
		#OS.shell_show_in_file_manager(destination_path, true)
		#DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED)
		#Addfile.add_File3_GLITCH()
		#Addfile.add_File4_GLITCH()
		#Addfile.add_File5_GLITCH()
		#timer()
		#should_show = false
		#return
#
#func timer():
	#if should_show == true:
		#await  get_tree().create_timer(10).timeout
		#should_show = false
		#return
#
#func Normal_AddFIles():
	#if should_show == true:
		#Addfile._add_File()
		#Addfile._add_File()
		#should_show = false
		#return
