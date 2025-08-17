class_name Player
extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@export 
var current_score := 0

signal score_changed(points: int)

func increase_score(points: int) -> void:
	current_score += points
	score_changed.emit(current_score)

func get_score() -> int:
	return current_score
	
func _ready() -> void:
	print(get_score())

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("Up", "Down")
	if direction:
		velocity.y= direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
