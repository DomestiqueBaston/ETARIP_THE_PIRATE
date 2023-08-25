extends Label


func _process(_delta):
	if Autoload.level == 1:
		if Autoload.gathered_coin == Autoload.LEVEL_ONE_COINS:
			$".".text = "Coins: all!"
			
		else:
			$".".text = "Coins: " + str(Autoload.gathered_coin) + "/" + str(Autoload.LEVEL_ONE_COINS)
	
	if Autoload.level == 2:
		if Autoload.gathered_coin == Autoload.LEVEL_TWO_COINS:
			$".".text = "Coins: all!"
		
		else:
			$".".text = "Coins: " + str(Autoload.gathered_coin) + "/" + str(Autoload.LEVEL_TWO_COINS)

	
	if Autoload.level == 3:
		if Autoload.gathered_coin == Autoload.LEVEL_THREE_COINS:
			$".".text = "Coins: all!"
		else:
			$".".text = "Coins: " + str(Autoload.gathered_coin) + "/" + str(Autoload.LEVEL_THREE_COINS)
