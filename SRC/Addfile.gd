extends Node

func _add_File():
	Events.file.close()
	Events.file = FileAccess.open(Events.destination_path, FileAccess.WRITE)
	Events.file.store_string(Events.data)
	Events.file.close()

func _add_File2():
	var destination_file = FileAccess.open(Events.destination_path_image, FileAccess.WRITE)
	destination_file.store_buffer(Events.buffer)
	Events.source_file.close()
	destination_file.close()

func _add_File3_GLITCH():
	Events.files.close()
	Events.files = FileAccess.open(Events.destination_path2, FileAccess.WRITE)
	Events.files.store_string(Events.data2)
	Events.files.close()

func _add_File4_GLITCH():
	Events.files2.close()
	Events.files2 = FileAccess.open(Events.destination_path3, FileAccess.WRITE)
	Events.files2.store_string(Events.data3)
	Events.files2.close()

func _add_File5_GLITCH():
	Events.files3.close()
	Events.files3 = FileAccess.open(Events.destination_path4, FileAccess.WRITE)
	Events.files3.store_string(Events.data4)
	Events.files3.close()
