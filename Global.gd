extends Node

var totalFollowers: int = 1
var totalBuildings: int = 0
var wood: int = 100
var faith: int = 0
var supplies: int = 100
var gold: float = 100
var happiness: float = 1.0
var turn: int = 0

var religionLvl: int = 1
var requirementsToLvlUp: Array[Dictionary] = [{"pop": 8}, {"pop": 16}, {"pop": 24}, {"pop": 32}, {"pop": 40}, {"pop":48}, {"pop": 56}, {"pop": 74}, {"pop": 82}, {"pop": 90}, {"pop": 98}, {"pop": 110}]
var requirementIndex:= 0

var happinessLossBonus: float = 1.0
var happinessGainBonus: float = 1.0

var currentBuilding = null
var currentFollower = null

var currentBuildType = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_gold(total_produced: float) -> void:
	gold += total_produced
