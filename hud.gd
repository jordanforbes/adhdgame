extends Control

@onready 
var score_val: Label = $VBoxContainer/HBoxContainer/ScoreVal

var score := 0

func update_score(player_score:int) -> void:
	score = player_score
	display_score()
	
func display_score() -> void:
	score_val.text = str(score)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	display_score()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
