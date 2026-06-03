extends Button

signal confirm_end_turn

func _on_pressed() -> void:
	emit_signal("confirm_end_turn")
	print("Sinal enviado")
