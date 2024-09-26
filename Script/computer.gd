extends CharacterBody2D

var speed = 350
var ball

func _ready() -> void:
	ball = get_parent().get_node("Ball")

func _physics_process(delta: float) -> void:
	if(abs(ball.position.y - position.y)<10):
		return
		
	if ball.position.y < position.y:
		velocity.y = -1
	else:
		velocity.y = 1
		
	velocity *= speed
	
	move_and_collide(velocity*delta)
