extends CharacterBody2D#

# signals
signal healthChanged

# move related variables
var speed = 500

# health related veriables
@export var maxHealth : int = 100
@export var currentHealth : int = 85
var healthRegen : int = 0
@onready var healthBar = $Healthbar

func _physics_process(delta): # movement processing
	healthUpdateF()
	
	var inputVector = Vector2.ZERO
	inputVector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	inputVector.y = Input.get_action_strength("back") - Input.get_action_strength("forward")
	inputVector = inputVector.normalized()
	
	if inputVector:
		velocity = inputVector * speed
		move_and_slide()

func healthUpdateF():
	healthBar.value = currentHealth
