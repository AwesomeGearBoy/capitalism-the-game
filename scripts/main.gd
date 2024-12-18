extends Node

var menu := true
var stock := false
var game_running := true
var auto_mode := false
var hide_messages := false
var game_load : bool
var unlocked_auto_mode := false
var unlocked_wares := false
var unlocked_luck := false
var unlocked_stock_market := false

var load_timeout := 0.0

var money := 0
var level := 1
var auto_level := 0
var warehouses := 0
var luck_level := 0
var level_cost := 50
var auto_cost := 3000
var wares_cost := 30000
var luck_cost := 1500125

var save := SaveData.new()
var key := KeyControl.new()

const UNLOCKED_AUTO_MODE_SAVE_PATH := "res://save/67ifvtq.data"
const UNLOCKED_WARES_SAVE_PATH := "res://save/e73gqfb.data"
const UNLOCKED_LUCK_SAVE_PATH := "res://save/84tfg39.data"
const UNLOCKED_STOCK_MARKET_SAVE_PATH := "res://save/d686fty.data"
const MONEY_SAVE_PATH := "res://save/n3jdheb.data"
const LEVEL_SAVE_PATH := "res://save/l38fn5k.data"
const AUTO_LEVEL_SAVE_PATH := "res://save/f6hbs34.data"
const WARES_SAVE_PATH := "res://save/pleo345.data"
const LUCK_SAVE_PATH := "res://save/1452gdn.data"
const LEVEL_COST_SAVE_PATH := "res://save/duio8fd.data"
const AUTO_COST_SAVE_PATH := "res://save/u7yds34.data"
const WARES_COST_SAVE_PATH := "res://save/wuqi75g.data"
const LUCK_COST_SAVE_PATH := "res://save/9o5dvj4.data"

func _ready():
	load_data()

func _process(delta):
	menu_handling()
	handle_message_mode()
	load_game(delta)
	process_auto_money()
	process_text()
	button_handling()
	unlock_stuff()
	save_data()

func new_game():
	unlocked_auto_mode = false
	unlocked_wares = false
	unlocked_luck = false
	unlocked_stock_market = false
	money = 0
	level = 1
	auto_level = 0
	warehouses = 0
	luck_level = 0
	level_cost = 50
	auto_cost = 3000
	wares_cost = 30000
	luck_cost = 1500125
	menu = false
	load_timeout = randi_range(1.2, 3.3)

func menu_handling():
	if !menu:
		if key.went_down("esc"):
			menu = true
			load_timeout = randi_range(1.2, 3.3)
	
	if menu == true:
		$Menu.show()
		auto_mode = false
	else:
		$Menu.hide()
	
	if menu == false:
		game_running = true
	else:
		game_running = false

func handle_message_mode():
	if key.went_down("F3") && !hide_messages:
		hide_messages = true
	elif key.went_down("F3") && hide_messages:
		hide_messages = false

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

func process_auto_money():
	if auto_mode:
		money = money + auto_level

func process_text():
	$Money.text = "MONEY: $" + str(money)
	$Level.text = "LEVEL: " + str(level)
	$AutoLevel.text = "AUTO LEVEL: " + str(auto_level)
	$Warehouses.text = "WAREHOUSES: " + str(warehouses)
	$LuckLevel.text = "LUCK LEVEL: " + str(luck_level)
	$LevelCost.text = "Cost: $" + str(level_cost)
	$WaresCost.text = "Cost: $" + str(wares_cost)
	
	if auto_level == 0:
		$AutoCost.text = "Buy: $" + str(auto_cost)
	elif auto_level < 35:
		$AutoCost.text = "Cost: $" + str(auto_cost)
	else:
		$AutoCost.text = "Cost: MAX LEVEL"
	
	if luck_level < 10:
		$LuckCost.text = "Cost: $" + str(luck_cost)
	else:
		$LuckCost.text = "Cost: MAX LEVEL"
	
	if hide_messages:
		$MessageMode.show()
	else:
		$MessageMode.hide()

func button_handling():
	if unlocked_auto_mode:
		$UpgradeAuto.show()
		$AutoCost.show()
	else:
		$UpgradeAuto.hide()
		$AutoCost.hide()
	
	if unlocked_wares:
		$BuyWarehouse.show()
		$WaresCost.show()
	else:
		$BuyWarehouse.hide()
		$WaresCost.hide()
	
	if unlocked_luck:
		$UpgradeLuck.show()
		$LuckCost.show()
	else:
		$UpgradeLuck.hide()
		$LuckCost.hide()
	
	if unlocked_stock_market:
		$StockMarketButton.show()
	else:
		$StockMarketButton.hide()
	
	if level < 20:
		$Salvage.hide()
	else:
		$Salvage.show()
	
	if auto_mode:
		$AutoButton.text = "AUTO: ON"
	else:
		$AutoButton.text = "AUTO: OFF"
	
	if auto_level == 0:
		$AutoButton.hide()
	else:
		$AutoButton.show()

func unlock_stuff():
	if level >= 5:
		unlocked_auto_mode = true
	
	if level >= 15:
		unlocked_wares = true
	
	if level >= 20:
		unlocked_luck = true
	
	#if level < 30:
		#unlocked_stock_market = true

func save_data():
	save.save_var(UNLOCKED_AUTO_MODE_SAVE_PATH, unlocked_auto_mode)
	save.save_var(UNLOCKED_WARES_SAVE_PATH, unlocked_wares)
	save.save_var(UNLOCKED_LUCK_SAVE_PATH, unlocked_luck)
	save.save_var(UNLOCKED_STOCK_MARKET_SAVE_PATH, unlocked_stock_market)
	save.save_var(MONEY_SAVE_PATH, money)
	save.save_var(LEVEL_SAVE_PATH, level)
	save.save_var(AUTO_LEVEL_SAVE_PATH, auto_level)
	save.save_var(WARES_SAVE_PATH, warehouses)
	save.save_var(LUCK_SAVE_PATH, luck_level)
	save.save_var(LEVEL_COST_SAVE_PATH, level_cost)
	save.save_var(AUTO_COST_SAVE_PATH, auto_cost)
	save.save_var(WARES_COST_SAVE_PATH, wares_cost)
	save.save_var(LUCK_COST_SAVE_PATH, luck_cost)

func load_data():
	unlocked_auto_mode = save.load_bool(UNLOCKED_AUTO_MODE_SAVE_PATH, false)
	unlocked_wares = save.load_bool(UNLOCKED_WARES_SAVE_PATH, false)
	unlocked_luck = save.load_bool(UNLOCKED_LUCK_SAVE_PATH, false)
	unlocked_stock_market = save.load_bool(UNLOCKED_STOCK_MARKET_SAVE_PATH, false)
	money = save.load_int(MONEY_SAVE_PATH, 0)
	level = save.load_int(LEVEL_SAVE_PATH, 1)
	auto_level = save.load_int(AUTO_LEVEL_SAVE_PATH, 0)
	warehouses = save.load_int(WARES_SAVE_PATH, 0)
	luck_level = save.load_int(LUCK_SAVE_PATH, 0)
	level_cost = save.load_int(LEVEL_COST_SAVE_PATH, 50)
	auto_cost = save.load_int(AUTO_COST_SAVE_PATH, 3000)
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
		if !hide_messages:
			$VendingMachine.show()
		good_effect(435, 565)
	elif event == 2:
		if !hide_messages:
			$LostUncle.show()
		good_effect(1035, 1565)
	elif event == 3:
		if !hide_messages:
			$LawsuitWin.show()
		good_effect(543, 2234)
	elif event == 4:
		if !hide_messages:
			$RandomDude.show()
		good_effect(1567, 3045)
	elif event == 5:
		if !hide_messages:
			$PennyRain.show()
		good_effect(5345, 6245)
	elif event == 6:
		if !hide_messages:
			$CatVideo.show()
		good_effect(5999, 10086)
	elif event == 7:
		if !hide_messages:
			$TvFame.show()
		good_effect(15065, 21085)

func bad_event_happened():
	var event := randi_range(1, 9)
	
	if event == 1:
		if !hide_messages:
			$FindMotivation.show()
		bad_effect(150, 250)
	elif event == 2:
		if !hide_messages:
			$DogBurial.show()
		bad_effect(450, 655)
	elif event == 3:
		if !hide_messages:
			$CashFire.show()
		bad_effect(450, 655)
	elif event == 4:
		if !hide_messages:
			$LawsuitLoss.show()
		bad_effect(543, 2234)
	elif event == 5:
		if !hide_messages:
			$GlitterMess.show()
		bad_effect(2500, 5000)
	elif event == 6:
		if !hide_messages:
			$RealEstate.show()
		bad_effect(3065, 6025)
	elif event == 7:
		if !hide_messages:
			$LemonadeStand.show()
		bad_effect(5085, 10025)
	elif event == 8:
		if !hide_messages:
			$ShinyPebbleCoin.show()
		bad_effect(6045, 12070)
	elif event == 9:
		if !hide_messages:
			$RosesRed.show()
		money = money * 0

func good_effect(origin : int, bound : int):
	var random_amount := randi_range(origin, bound)
	money += random_amount * level

func bad_effect(origin : int, bound : int):
	var random_amount := randi_range(origin, bound)
	money -= random_amount * level

func activate_auto():
	if auto_mode:
		auto_mode = false
	elif !auto_mode:
		auto_mode = true

func upgrade_level():
	if money >= level_cost:
		money = money - level_cost
		level = level + 1
		if level <= 8:
			level_cost = 50 * level
		else:
			level_cost = level_cost * 2

func upgrade_auto():
	if auto_level < 35:
		if money >= auto_cost:
			money = money - auto_cost
			auto_level = auto_level + 1
			if auto_level == 1:
				auto_cost = 25
			elif auto_level < 15:
				auto_cost = 25 * auto_level
			elif auto_level >= 15:
				auto_cost = auto_cost * 2

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

func salvage():
	$SalvageMessage.hide()
	money += ((warehouses * 75000) + (auto_level * 35000) * (level * (luck_level + 1)))
	
	auto_mode = false
	level = 1
	auto_level = 0
	warehouses = 0
	luck_level = 0
	level_cost = 50
	auto_cost = 3000
	wares_cost = 30000
	luck_cost = 1500125

func _on_revenue_button_pressed():
	if !menu:
		if !stock:
			collect_revenue()

func _on_auto_button_pressed():
	if !menu:
		if !stock:
			activate_auto()

func _on_upgrade_level_pressed():
	if !menu:
		if !stock:
			upgrade_level()

func _on_upgrade_auto_pressed():
	if !menu:
		if !stock:
			upgrade_auto()

func _on_buy_warehouse_pressed():
	if !menu:
		if !stock:
			buy_warehouse()

func _on_upgrade_luck_pressed():
	if !menu:
		if !stock:
			upgrade_luck()

func _on_stock_market_button_pressed():
	if !menu:
		if !stock:
			stock = true
			$StockTitle.show()
			$StockMarket.show() ### <---------- LEFT OFF HERE

func _on_salvage_pressed():
	if !menu:
		if !stock:
			$SalvageMessage.show()

func _on_confirm_salvage_pressed():
	salvage()

func _on_hint_pressed():
	if !menu:
		if !stock:
			$Help.show()

func _on_menu_new_game():
	new_game()

func _on_menu_play():
	menu = false
	load_timeout = randi_range(1.2, 3.3)

func _on_event_gift_collected():
	pass

func _on_menu_button_pressed():
	if !menu:
		if !stock:
			load_timeout = randi_range(1.2, 3.3)
			menu = true

func _on_hide_popups_pressed():
	if !menu:
		if !stock:
			if hide_messages:
				hide_messages = false
			elif !hide_messages:
				hide_messages = true
