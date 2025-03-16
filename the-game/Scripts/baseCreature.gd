class_name baseCreature
extends CharacterBody2D

var maxHealth: int
var currHealth: int
var speed: int

func applyDamage(amount):
	if ((currHealth - amount) > 0):
		currHealth = currHealth - amount
	else:
		currHealth = 0
		queue_free()
