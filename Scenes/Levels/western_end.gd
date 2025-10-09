extends Area2D
@onready var black: Sprite2D = $"../../Black"
@onready var player: CharacterBody2D = $"../../Player"

var end_not_reached = true

func _on_body_entered(body: Node2D) -> void:
	# ADDING THIS WHEN I CAN FIGURE OUT HOW TO HAVE IT NOT GET STUCK ON THE DIALOGUE black.visible = !black.visible
	
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/western_success.dialogue"))
	
func _ready() -> void:
	DialogueManager.dialogue_ended.connect(_on_dialogue_manager_dialogue_ended)

func _on_dialogue_manager_dialogue_ended(resource: DialogueResource) -> void:
	if not (end_not_reached) :
		get_tree().change_scene_to_file("res://Scenes/Levels/space_level.tscn")
		print ("To Space!")

	if (end_not_reached) :
		get_tree().reload_current_scene()
