extends Label


func _process(_delta):
	if Autoload.death == true:
		Autoload.stop_music = true
		$"../../../Timer".stop()
		$"../../Countdown".text = "So sad!"
		$".".text = "You're dead, man!\nJust leave now\n\n(press Enter to retry)..."
		$"../../ColorRect".self_modulate.a = 1
		$"..".modulate.a = 1
		if Input.is_action_just_pressed("ui_accept"):
							Autoload.reset_var()
							var _useless = get_tree().change_scene("res://SCENES/Etarip_1.tscn")
