extends Sprite2D

func _process(_delta):
	var KeyControl = load("res://scripts/classes/KeyControl.cs")
	var key = KeyControl.new()
	if key.WentDown("space"):
		hide()

func _on_exit_pressed():
	hide()
