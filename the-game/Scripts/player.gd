extends baseCreature

# signals
signal healthChanged

# move related variables
var dash_cooldown: int = 1

# health related veriables
@onready var healthBar = $Healthbar

func _ready():
	maxHealth = 100
	currHealth = maxHealth
	speed = 500

func _physics_process(delta): # frame by frame stuff
	healthUpdateF()
	
	var inputVector = Vector2.ZERO
	inputVector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	inputVector.y = Input.get_action_strength("back") - Input.get_action_strength("forward")
	inputVector = inputVector.normalized()
	
	if inputVector:
		velocity = inputVector * speed
		move_and_slide()

func healthUpdateF(): # updates the healthbar to show player hp
	healthBar.value = currHealth


func _on_hurtbox_collided() -> void:
	changeHp(-1)
