extends Node2D


func _process(_delta):
	if Autoload.stop_music == true:
		$AudioStreamPlayer2D.stop()
		
		
