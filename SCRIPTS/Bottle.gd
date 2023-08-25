extends Area2D

func _on_Bottle_body_entered(_body):
	$AudioStreamPlayer2D.play(0.0)
	if $"../Timer".wait_time == 3.0:
		$CollisionShape2D.position.x = 350
		$"../Timer".set_wait_time(10.0)
		Autoload.invert = false
		yield($AudioStreamPlayer2D, "finished")
		queue_free()
	$"../Timer".start(0.0)
	$"../Timer".set_wait_time(3.0)
