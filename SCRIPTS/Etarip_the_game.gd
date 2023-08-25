extends Node2D


func _on_AnimationPlayer_animation_finished(_anim_name):
	Autoload.lets_go = true

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		var _useless = get_tree().change_scene("res://SCENES/Etarip_1.tscn")
		
