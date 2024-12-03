extends Node

var menu = true
var game_running = true
var money = 0
var level = 1
var warehouses = 50
var luck_level = 0
var level_cost = 200
var wares_cost = 1500
var luck_cost = 150000

func _ready():
	pass

func _process(_delta):
	menu_handling()
	process_text()

func menu_handling():
	var key = KeyControl.new()
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

func process_text():
	$Money.text = "MONEY: $" + str(money)
	$Level.text = "LEVEL: " + str(level)
	$Warehouses.text = "WAREHOUSES: " + str(warehouses)
	$LuckLevel.text = "LUCK LEVEL: " + str(luck_level)
	$LevelCost.text = "Cost: $" + str(level_cost)
	$WaresCost.text = "Cost: $" + str(wares_cost)
	$LuckCost.text = "Cost: $" + str(luck_cost)

func collect_revenue():
	var random_amount = 0
	
	if luck_level == 0:
		random_amount = randi_range(200, 300)
	elif luck_level == 1:
		random_amount = randi_range(210, 310)
	elif luck_level == 2:
		random_amount = randi_range(220, 320)
	elif luck_level == 3:
		random_amount = randi_range(230, 330)
	elif luck_level == 4:
		random_amount = randi_range(240, 340)
	elif luck_level == 5:
		random_amount = randi_range(250, 350)
	elif luck_level == 6:
		random_amount = randi_range(260, 360)
	elif luck_level == 7:
		random_amount = randi_range(270, 370)
	elif luck_level == 8:
		random_amount = randi_range(280, 380)
	elif luck_level == 9:
		random_amount = randi_range(290, 390)
	elif luck_level == 10:
		random_amount = randi_range(300, 400)
	
	money += (random_amount + (warehouses * 200)) * level

func _on_revenue_button_pressed():
	collect_revenue()

func _on_upgrade_level_pressed():
	if money >= level_cost:
		money = money - level_cost
		level = level + 1
		if level >= 1:
			level_cost = level_cost * 2
		elif level >= 25:
			level_cost = level_cost * 3
		elif level >= 50:
			level_cost = level_cost * 4

func _on_hint_pressed():
	$Help.show()

func _on_menu_play():
	menu = false
