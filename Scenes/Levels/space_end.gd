extends Area2D
@onready var space_player: CharacterBody2D = $SpacePlayer

var end_not_reached = true

func _on_body_entered(body: Node2D) -> void:
	if (end_not_reached) :
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/space_success.dialogue"))
		end_not_reached = false

	
func _ready() -> void:
	DialogueManager.dialogue_ended.connect(_on_dialogue_manager_dialogue_ended)

func _on_dialogue_manager_dialogue_ended(resource: DialogueResource) -> void:
	if not (end_not_reached) :
		get_tree().change_scene_to_file("res://Scenes/Title Screen/titlescreen.tscn")
		print ("End!")
	
	if (end_not_reached) :
		get_tree().reload_current_scene()
