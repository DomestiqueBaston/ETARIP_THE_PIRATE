extends Label


func _process(_delta):
	var temps = stepify($"../../Timer".time_left, 0.1)
	if Autoload.win == true:
		$".".text = "Timer: wow!"
		
	else:
		$".".text = "Timer: " + str(temps) + "''"
	
