extends Area2D

var speed := 400 
var direction := Vector2.LEFT

@export 
var point_value := 10

func _physics_process(delta: float) -> void: 
	position += speed * direction * delta
	
func _on_body_entered(body: Player) -> void:
	body.increase_score(point_value)
	print(body.get_score())
	queue_free()
	
