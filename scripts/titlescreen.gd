extends Sprite2D
class_name TitleScreen

var collected_release_present = false
var save = SaveData.new()
const RELEASE_EVENT_SAVE_PATH = "res://save/r3lg1ft.data"
signal play

func _ready():
	collected_release_present = save.load_bool(RELEASE_EVENT_SAVE_PATH, false)

func _process(_delta):
	if collected_release_present:
		$EventGift.hide()
	else:
		$EventGift.show()
	var system = GameVersion.new()
	$Version.text = system.get_version()

func _on_play_button_pressed():
	play.emit()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_see_credits_pressed():
	$Credits.show()

func _on_see_warning_pressed():
	$Warning.show()

func _on_event_gift_pressed():
	collected_release_present = true
	save.save_var(RELEASE_EVENT_SAVE_PATH, collected_release_present)
	$EventGiftMessage.show()
	# Main.money = Main.money + 500000
