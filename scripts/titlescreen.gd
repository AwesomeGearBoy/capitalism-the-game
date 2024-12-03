extends Sprite2D

signal play
signal quit

func _on_play_button_pressed():
	play.emit()

func _on_quit_button_pressed():
	get_tree().quit()
