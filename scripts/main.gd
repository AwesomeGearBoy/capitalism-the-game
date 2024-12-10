extends Node
class_name Main

var menu := true
var game_running := true
var game_load : bool
var load_timeout := 0.0
var money := 0
var level := 1
var warehouses := 0
var luck_level := 0
var level_cost := 50
var wares_cost := 30000
var luck_cost := 1500125
var save := SaveData.new()
var key := KeyControl.new()
const MONEY_SAVE_PATH := "res://save/n3jdheb.data"
const LEVEL_SAVE_PATH := "res://save/l38fn5k.data"
const WARES_SAVE_PATH := "res://save/pleo345.data"
const LUCK_SAVE_PATH := "res://save/1452gdn.data"
const LEVEL_COST_SAVE_PATH := "res://save/duio8fd.data"
const WARES_COST_SAVE_PATH := "res://save/wuqi75g.data"
const LUCK_COST_SAVE_PATH := "res://save/9o5dvj4.data"

func _ready():
	load_data()

func _process(delta):
	menu_handling()
	load_game(delta)
	process_text()
	save_data()

func menu_handling():
	if key.went_down("esc"):
		menu = true
		load_timeout = randi_range(1.2, 3.3)
	
	if menu == true:
		$Menu.show()
	else:
		$Menu.hide()
	
	if menu == false:
		game_running = true
	else:
		game_running = false

func load_game(delta):
	load_timeout = load_timeout - 1 * delta
	
	if load_timeout > 0:
		game_load = true
	else:
		game_load = false
	
	if load_timeout == 0:
		load_timeout = 0
	
	if game_load:
		$LoadingScreen.show()
	elif !game_load:
		$LoadingScreen.hide()

func process_text():
	$Money.text = "MONEY: $" + str(money)
	$Level.text = "LEVEL: " + str(level)
	$Warehouses.text = "WAREHOUSES: " + str(warehouses)
	$LuckLevel.text = "LUCK LEVEL: " + str(luck_level)
	$LevelCost.text = "Cost: $" + str(level_cost)
	$WaresCost.text = "Cost: $" + str(wares_cost)
	if luck_level < 10:
		$LuckCost.text = "Cost: $" + str(luck_cost)
	else:
		$LuckCost.text = "Cost: MAX LEVEL"

func save_data():
	save.save_var(MONEY_SAVE_PATH, money)
	save.save_var(LEVEL_SAVE_PATH, level)
	save.save_var(WARES_SAVE_PATH, warehouses)
	save.save_var(LUCK_SAVE_PATH, luck_level)
	save.save_var(LEVEL_COST_SAVE_PATH, level_cost)
	save.save_var(WARES_COST_SAVE_PATH, wares_cost)
	save.save_var(LUCK_COST_SAVE_PATH, luck_cost)

func load_data():
	money = save.load_int(MONEY_SAVE_PATH)
	level = save.load_int(LEVEL_SAVE_PATH, 1)
	warehouses = save.load_int(WARES_SAVE_PATH)
	luck_level = save.load_int(LUCK_SAVE_PATH)
	level_cost = save.load_int(LEVEL_COST_SAVE_PATH, 50)
	wares_cost = save.load_int(WARES_COST_SAVE_PATH, 30000)
	luck_cost = save.load_int(LUCK_COST_SAVE_PATH, 1500125)

func collect_revenue():
	var random_amount := 0
	
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
	
	money += (random_amount + (warehouses * 1000)) * level
	check_for_event()

func check_for_event():
	var chance : int
	if luck_level == 0 || luck_level == 1:
		chance = randi_range(1, 40)
	elif luck_level == 2 || luck_level == 3:
		chance = randi_range(1, 35)
	elif luck_level == 4 || luck_level == 5:
		chance = randi_range(1, 30)
	elif luck_level == 6 || luck_level == 7:
		chance = randi_range(1, 25)
	elif luck_level == 8 || luck_level == 9:
		chance = randi_range(1, 20)
	elif luck_level == 10:
		chance = randi_range(1, 15)
	
	if chance == 1:
		something_happened()

func something_happened():
	var chance := randi_range(1, 2)
	if chance == 1:
		good_event_happened()
	elif chance == 2:
		if luck_level != 10:
			bad_event_happened()
		elif luck_level == 10:
			good_event_happened()

func good_event_happened():
	var event := randi_range(1, 7)
	
	if event == 1:
		$VendingMachine.show()
		good_effect(435, 565)
	elif event == 2:
		$LostUncle.show()
		good_effect(1035, 1565)
	elif event == 3:
		$LawsuitWin.show()
		good_effect(543, 2234)
	elif event == 4:
		$RandomDude.show()
		good_effect(1567, 3045)
	elif event == 5:
		$PennyRain.show()
		good_effect(5345, 6245)
	elif event == 6:
		$CatVideo.show()
		good_effect(5999, 10086)
	elif event == 7:
		$TvFame.show()
		good_effect(15065, 21085)

func bad_event_happened():
	var event := randi_range(1, 9)
	
	if event == 1:
		$FindMotivation.show()
		bad_effect(150, 250)
	elif event == 2:
		$DogBurial.show()
		bad_effect(450, 655)
	elif event == 3:
		$CashFire.show()
		bad_effect(450, 655)
	elif event == 4:
		$LawsuitLoss.show()
		bad_effect(543, 2234)
	elif event == 5:
		$GlitterMess.show()
		bad_effect(2500, 5000)
	elif event == 6:
		$RealEstate.show()
		bad_effect(3065, 6025)
	elif event == 7:
		$LemonadeStand.show()
		bad_effect(5085, 10025)
	elif event == 8:
		$ShinyPebbleCoin.show()
		bad_effect(6045, 12070)
	elif event == 9:
		$RosesRed.show()
		money = money * 0

func good_effect(origin : int, bound : int):
	var random_amount := randi_range(origin, bound)
	money += random_amount * level

func bad_effect(origin : int, bound : int):
	var random_amount := randi_range(origin, bound)
	money -= random_amount * level

func upgrade_level():
	if money >= level_cost:
		money = money - level_cost
		level = level + 1
		if level <= 8:
			level_cost = 50 * level
		else:
			level_cost = level_cost * 2

func buy_warehouse():
	if money >= wares_cost:
		money = money - wares_cost
		warehouses += 1
		if warehouses == 0:
			wares_cost = 30000
		else:
			wares_cost = (2000 * level) * warehouses

func upgrade_luck():
	if luck_level < 10:
		if money >= luck_cost:
			money = money - luck_cost
			luck_level += 1
			luck_cost = luck_cost * 2

func _on_revenue_button_pressed():
	collect_revenue()

func _on_upgrade_level_pressed():
	upgrade_level()

func _on_buy_warehouse_pressed():
	buy_warehouse()

func _on_upgrade_luck_pressed():
	upgrade_luck()

func _on_hint_pressed():
	$Help.show()

func _on_menu_play():
	menu = false
	load_timeout = randi_range(1.2, 3.3)

func _on_event_gift_collected():
	money += 500000 * level
