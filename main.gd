extends Node2D

@onready 
var player = $Player

@onready 
var hud = $Hud
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.score_changed.connect(hud.update_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
