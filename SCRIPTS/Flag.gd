extends Area2D


func _on_Flag_body_entered(_body):
	if Autoload.level == 1:
		if Autoload.gathered_coin >= Autoload.LEVEL_ONE_COINS:
			finishing_level()
			
	if Autoload.level == 2:
		if Autoload.gathered_coin >= Autoload.LEVEL_TWO_COINS:
			finishing_level()

	if Autoload.level == 3:
		if Autoload.gathered_coin >= Autoload.LEVEL_THREE_COINS:
			finishing_level()

func finishing_level():
	Autoload.stop_music = true
	$AudioStreamPlayer2D.play(0.0)
	if Autoload.level == 3:
		$"../HUD/CenterContainer/Win".text = "Congrats,\nyou finished that game!\n\nHit Enter now..."
	$"../HUD/CenterContainer".modulate.a = 1
	$"../HUD/ColorRect".self_modulate.a = 1
	$"../Timer".stop()
	Autoload.win = true

func _input(event):
	if event.is_action_pressed("ui_accept"):
		if Autoload.win == true:
			if Autoload.level == 1:
				Autoload.reset_var()
				var _useless = get_tree().change_scene("res://SCENES/Etarip_2.tscn")
				
		if Autoload.win == true:
			if Autoload.level == 2:
				Autoload.reset_var()
				var _useless = get_tree().change_scene("res://SCENES/Etarip_3.tscn")
				
		if Autoload.win == true:
			if Autoload.level == 3:
				get_tree().quit()
				

