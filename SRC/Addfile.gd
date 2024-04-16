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
	Events.destination_file.close()

func _add_File3_GLITCH():
	Events.files.close()
	Events.files = FileAccess.open(Events.destination_path2, FileAccess.WRITE)
	Events.files.store_string(Events.data2)
	Events.files.close()
	Events.files = FileAccess.open(Events.destination_path3, FileAccess.WRITE)
	Events.files.store_string(Events.data3)
	Events.files.close()
	Events.files = FileAccess.open(Events.destination_path4, FileAccess.WRITE)
	Events.files.store_string(Events.data4)
	Events.files.close()
