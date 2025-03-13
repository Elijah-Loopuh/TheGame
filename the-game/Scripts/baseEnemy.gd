extends CharacterBody2D

var maxHealth: int
var currHealth: int = maxHealth

func applyDamage(amount):
	if ((currHealth - amount) > 0):
		currHealth = currHealth - amount
	else:
		currHealth = 0
		print("You died")
