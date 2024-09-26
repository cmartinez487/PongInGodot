extends Node2D

const CENTER = Vector2(577, 326)
var playerScore = 0
var compScore = 0

func _on_goal_left_body_entered(body: Node2D) -> void:
	compScore +=1
	$ComputerScore.text = str(compScore)
	resetBall()

func _on_goal_right_body_entered(body: Node2D) -> void:
	playerScore +=1
	$PlayerScore.text = str(playerScore)
	resetBall()

func scoreChange() -> void:
	pass

func resetBall() -> void:
	$Ball.position = CENTER
	$Ball.call("setBallVelocity")
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y
	
