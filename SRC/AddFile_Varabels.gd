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

class_name Horror extends Node

@export var source_path:String = "res://ASSETS/Misc/d2h5IHlvdSBjaGVhdA==.txt"
@export  var destination_path:String  = OS.get_executable_path().get_base_dir() + "/d2h5IHlvdSBjaGVhdA==.txt"
@export  var destination_path_excute:String  = OS.get_executable_path().get_base_dir() + "/The_Worse_ Game_Ever.Linux.x86_64"
@export var destination_path_excute2:String  = OS.get_executable_path().get_base_dir() + "/*.exe"
@onready var file := FileAccess.open(source_path, FileAccess.READ)
@onready  var data:String = file.get_as_text()
@export  var source_path_image = "res://ASSETS/Misc/HELPME.png"
@export  var destination_path_image = OS.get_executable_path().get_base_dir() + "/HELPME.png"
@onready var file_Image := FileAccess.open(source_path_image, FileAccess.READ)
@onready  var buffer := file_Image.get_buffer(file_Image.get_length())
@export  var should_show:bool = true
@export var source_path2:String = "res://ASSETS/Misc/Horror/YOU.txt"
@export var source_path3:String = "res://ASSETS/Misc/Horror/WILL.txt"
@export var source_path4:String = "res://ASSETS/Misc/Horror/DIE.txt"
@export var  destination_path2 = OS.get_executable_path().get_base_dir() + "/YOU.txt"
@export var  destination_path3 = OS.get_executable_path().get_base_dir() + "/WILL.txt"
@export var  destination_path4 = OS.get_executable_path().get_base_dir() + "/DIE.txt"
@onready var file2 := FileAccess.open(source_path2, FileAccess.READ)
@onready var file3 := FileAccess.open(source_path3, FileAccess.READ)
@onready var file4 := FileAccess.open(source_path4, FileAccess.READ)
@onready  var data2:String = file2.get_as_text()
@onready  var data3:String = file3.get_as_text()
@onready  var data4:String = file4.get_as_text()
@export var  Defulit = OS.get_executable_path().get_base_dir() + "/DIE.txt"
