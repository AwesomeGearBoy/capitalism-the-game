class_name SaveData

func save_var(file_path : String, variable):
	var file := FileAccess.open(file_path, FileAccess.WRITE)
	file.store_string(str(variable))

func load_int(file_path : String) -> int:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		return file.get_as_text(true).to_int()
	else:
		return 0

func load_float(file_path : String) -> float:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		return file.get_as_text(true).to_float()
	else:
		return 0.0

func load_string(file_path : String) -> String:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		return file.get_as_text(true)
	else:
		return ""

func load_bool(file_path : String) -> bool:
	if FileAccess.file_exists(file_path):
		var file := FileAccess.open(file_path, FileAccess.READ)
		var boolean := file.get_as_text(true)
		if boolean == "true":
			return true
		elif boolean == "false":
			return false
		else:
			return false
	else:
		return false
