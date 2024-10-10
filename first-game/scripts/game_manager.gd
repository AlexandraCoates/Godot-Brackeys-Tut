extends Node

var score = 0
@onready var score_label: Label = $ScoreLabel

func add_point(): 
	score += 1
	# Casting the score var as a string allows it to be written like this
	score_label.text = "You collected " + str(score) + " coins."
	
