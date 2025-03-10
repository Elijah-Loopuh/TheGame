extends CharacterBody2D

const TARGET: int = 300 # target distance from player
var speed: int = 300
var dist: float

@onready var player = $"../Player" # declare player as a variable

func _physics_process(delta: float) -> void:
	velocity = Vector2()
	dist = sqrt((position.x - player.position.x) ** 2 + (position.y - player.position.y) ** 2)

	if position.x > player.position.x:
		velocity.x -= 1
	if position.x < player.position.x:
		velocity.x += 1
	if position.y > player.position.y:
		velocity.y -= 1
	if position.y < player.position.y:
		velocity.y += 1
		
	if dist < TARGET:
		velocity *= -1
	

	velocity = velocity * speed
	move_and_slide()
