extends Button

signal confirmEndTurn

func _on_pressed() -> void:
	emit_signal("confirmEndTurn")
	print("Sinal enviado")
