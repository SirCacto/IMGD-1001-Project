extends Area2D


var player_path=preload("res://Scenes/Player/player.tscn")
var player=player_path.instantiate()


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print ("You died!")
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/western_death.dialogue"))
	elif body.name =="SpacePlayer":
		print ("You died!")
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/space_death.dialogue"))
