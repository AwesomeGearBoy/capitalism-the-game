extends Sprite2D

var release = 0
var update = 4
var bug_fixes = 2
var version = str(release) + "." + str(update) + "." + str(bug_fixes)
signal play

func _process(_delta):
	$Version.text = "BETA ver." + version

func _on_play_button_pressed():
	play.emit()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_see_credits_pressed() -> void:
	$Credits.show()
