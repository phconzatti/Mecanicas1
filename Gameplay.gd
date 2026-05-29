extends Node



func _ready() -> void:
	var endTurn = get_node("Button")
	endTurn.connect("confirmEndTurn", _onTurnEnded)

func _onTurnEnded() -> void:
	Global.turn += 1
	print(Global.turn)
