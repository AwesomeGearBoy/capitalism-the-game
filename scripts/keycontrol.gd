class_name KeyControl

func down(key) -> bool:
	if Input.is_action_pressed(key):
		return true
	else:
		return false

func went_down(key) -> bool:
	if Input.is_action_just_pressed(key):
		return true
	else:
		return false

func went_up(key) -> bool:
	if Input.is_action_just_released(key):
		return true
	else:
		return false
