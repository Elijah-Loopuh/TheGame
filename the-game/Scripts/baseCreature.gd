class_name baseCreature
extends CharacterBody2D

var maxHealth: int
var currHealth: int
var speed: int

func changeHp(amount):
	currHealth = currHealth + amount
	
	if currHealth < 1: # check for death, print a test message declaring death
		print("TEST: A DEATH OCCURED")
		queue_free()
	
	if currHealth > maxHealth: # overhealth check
		currHealth = maxHealth
