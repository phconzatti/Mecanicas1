extends Node

var total_gold_produced: float = 0

func _ready() -> void:
	var endTurn = get_node("Button")
	endTurn.connect("confirm_end_turn", _on_turn_ended)

func _produce() -> void:
	for child in self.get_children():
		if child.is_in_group("mines"):
			total_gold_produced += child.produce()
			Global.add_gold(total_gold_produced)
			total_gold_produced = 0

func _on_turn_ended() -> void:
	_produce()
	Global.turn += 1
	print(Global.turn)
	print(Global.gold)
