extends Area2D
# Set the game manager as unique, this does make it so it can ONLY be accessed in this scene though, if the coins
# are in a diff scene this would not work.
@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup_anim")
	
