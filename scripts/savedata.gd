class_name SaveData

func save_var(file_path : String, variable):
	var file := FileAccess.open(file_path, FileAccess.WRITE)
	file.store_string(str(variable))

func save_string(file_path : String, string : String):
	#var file := FileAccess.open(file_path, FileAccess.WRITE)
	#file.store_string(string)
	var file = FileAccess.open(file_path, FileAccess.WRITE)
	if file:
		file.store_string(string)
		file.flush()
		file.close()
	else:
		print("Error opening file for writing: ", file_path)

func load_int(file_path : String, default_value : int = 0) -> int:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		return file.get_as_text(true).to_int()
	else:
		return default_value

func load_float(file_path : String, default_value : float = 0.0) -> float:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		return file.get_as_text(true).to_float()
	else:
		return default_value

func load_string(file_path : String, default_value : String = "") -> String:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		return file.get_as_text(true)
	else:
		return default_value

func load_bool(file_path : String, default_value : bool = false) -> bool:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		var boolean := file.get_as_text(true)
		if boolean == "true":
			return true
		elif boolean == "false":
			return false
		else:
			return default_value
	else:
		return default_value
