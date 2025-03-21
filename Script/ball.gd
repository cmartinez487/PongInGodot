extends CharacterBody2D

var speed = 500

func _ready() -> void:
	setBallVelocity()
	
func setBallVelocity() -> void:
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
	
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1

	velocity *= speed
	
func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(velocity*delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
