extends Sprite2D

var SaveData = preload("res://scripts/classes/SaveData.cs")
var GameVersion = preload("res://scripts/classes/Version.cs")

var collected_event_present := true
var save := SaveData.new()
var EVENT_GIFT_SAVE_PATH := "res://save/"

signal play
signal new_game
signal gift_collected

func _ready():
	pass

func _process(_delta):
	if collected_event_present:
		$EventGift.hide()
	else:
		$EventGift.show()
	var system = GameVersion.new()
	$Version.text = system.GetVersion()

func _on_new_game_pressed():
	$NewGameWarning.show()

func _on_yes_pressed():
	$NewGameWarning.hide()
	new_game.emit()

func _on_play_button_pressed():
	play.emit()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_see_credits_pressed():
	$Credits.show()

func _on_see_warning_pressed():
	$Warning.show()

func _on_event_gift_pressed():
	$EventGiftMessage.show()
	gift_collected.emit()
