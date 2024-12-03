extends Sprite2D

func _process(delta):
	var key = KeyControl.new()
	if key.went_down("esc"):
		hide()

func _on_exit_pressed():
	hide()
