extends Sprite2D

@export 
var speed := 300

var direction := Vector2.UP

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void: 
	position += speed * direction * delta
