extends Area2D


func _on_La_Mort_body_entered(_body):
	Autoload.death = true
	Autoload.stop_music = true
	$La_Muerte.play(0.0)
