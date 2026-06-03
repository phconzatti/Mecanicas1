extends Node2D

@export var current_workers: int = 0
@export var base_production: int = 1

var max_workers: int = 5
var total_production: float = 0
var worker_skill_modifier: float = 1

func _lumber_production() -> void:
	total_production = current_workers * base_production * worker_skill_modifier

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func produce() -> float:
	_lumber_production()
	return total_production
