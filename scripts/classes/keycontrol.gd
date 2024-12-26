class_name KeyControl

func down(key : String) -> bool:
	if Input.is_action_pressed(key):
		return true
	else:
		return false

func went_down(key : String) -> bool:
	if Input.is_action_just_pressed(key):
		return true
	else:
		return false

func went_up(key : String) -> bool:
	if Input.is_action_just_released(key):
		return true
	else:
		return false

func any_down() -> bool:
	if Input.is_anything_pressed():
		return true
	else:
		return false
