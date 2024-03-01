extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)

#
#func copy_file(src_path: String, dst_path: String) -> void:
   #
	#if FileAccess.new(src_path):
		#var src_file = FileAccess.open(src_path, FileAccess.READ)
		#var data = src_file.get_buffer(src_file.get_len())
		#src_file.close()
#
		#var dst_file = FileAccess.open(dst_path, FileAccess.WRITE)
		#dst_file.store_buffer(data)
		#dst_file.close()
	#else:
		#print("Source file does not exist.")
