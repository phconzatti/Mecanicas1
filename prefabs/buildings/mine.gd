extends Node2D

@export var current_workers: int = 0
@export var base_production: int = 1

var max_workers: int = 5
var total_production: float = 0
var worker_skill_modifier: float = 1

func _worker_modifier() -> float:
	var modifier = 1.0
	for follower in self.get_children():
		if follower.is_in_group("follower"):
			modifier += follower.mining_skill_modifier()
	print(modifier)
	return modifier

func _mine_production() -> void:
	worker_skill_modifier = _worker_modifier()
	total_production = current_workers * base_production * worker_skill_modifier

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func produce() -> float:
	_mine_production()
	return total_production
