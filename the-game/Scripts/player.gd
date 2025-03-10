extends CharacterBody2D

var speed = 500

func _physics_process(delta): # movement processing
	velocity = Vector2()
	
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("forward"):
		velocity.y -= 1
	if Input.is_action_pressed("back"):
		velocity.y += 1
		
	velocity = velocity * speed
	move_and_slide()
