extends KinematicBody2D


var velocity = Vector2.ZERO
const SPEED = 175
const GRAVITY = 20
const JUMPFORCE = -475


func _ready():
	pass

func _physics_process(_delta):
	velocity.y = velocity.y + GRAVITY
	
	if Autoload.win == true:
		set_physics_process(false)
	
	if Autoload.invert == false:
		$AnimatedSprite.material.set_shader_param("RED_OUTLINE", Color(0.34, 0.08, 0.09, 1.0))
	else:
		$AnimatedSprite.material.set_shader_param("RED_OUTLINE", Color(0.20, 0.19, 0.23, 1.0))

	if Input.is_action_pressed("ui_right"):
		if Autoload.invert == true:
			velocity.x = -SPEED
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("run")
		else:
			velocity.x = SPEED
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("run")
			

	elif Input.is_action_pressed("ui_left"):
		if Autoload.invert == true:
			velocity.x = SPEED
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("run")
		else:	
			velocity.x = -SPEED
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("run")
	
	else:
		$AnimatedSprite.play("idle")
	
	if not is_on_floor():
		if velocity.y <= 0:
			$AnimatedSprite.play("jump")
		else:
			$AnimatedSprite.play("fall")
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y = JUMPFORCE
		$AudioStreamPlayer2D.play(0.0)
		
	velocity = move_and_slide(velocity,Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)

func _on_Timer_timeout():
	Autoload.invert = not Autoload.invert

