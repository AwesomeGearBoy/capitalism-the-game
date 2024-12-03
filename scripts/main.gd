extends Node

var menu = true
var game_running = true
var money = 0
var level = 1
var warehouses = 0
var luck_level = 0

func _ready():
	pass

func _process(delta):
	var key = KeyControl.new()
	
	# ====== LEFT OFF HERE - NEED TO SET TEXT EVERYWHERE BEFORE ANYTHING ELSE ====== #
	$Money.text = "MONEY: $" + str(money)
	$Level.text = "LEVEL: " + str(level)
	$Warehouses.text = "WAREHOUSES: " + str(warehouses)
	$LuckLevel.text = "LUCK LEVEL: " + str(luck_level)
	
	if key.went_down("esc"):
		menu = true
	
	if menu == true:
		$Menu.show()
	else:
		$Menu.hide()
	
	if menu == false:
		game_running = true
	else:
		game_running = false

func _on_hint_pressed():
	$Help.show()

func _on_menu_play():
	menu = false
