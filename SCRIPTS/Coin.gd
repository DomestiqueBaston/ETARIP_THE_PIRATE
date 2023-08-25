extends Area2D


func _on_Coin_body_entered(_body):
	$CollisionShape2D.position.x = 350
	hide()
	$AudioStreamPlayer2D.play(0.0)
	Autoload.gathered_coin += 1
	yield($AudioStreamPlayer2D, "finished")
	queue_free()
