extends Node2D

@export var modifiers := []

@export var mining_skill: int = 0
@export var farming_skill: int = 0
@export var lumber_skill: int = 0
@export var combat_skill: int = 0

func mining_skill_modifier() -> float:
	var modifier = mining_skill * 0.025
	return modifier
