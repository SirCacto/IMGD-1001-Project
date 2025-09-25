extends Area2D


func _on_body_entered(body: Node2D) -> void:
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/western_success.dialogue"))
	
func _ready() -> void:
	DialogueManager.dialogue_ended.connect(_on_dialogue_manager_dialogue_ended)

func _on_dialogue_manager_dialogue_ended(resource: DialogueResource) -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/space_level.tscn")
	print ("To Space!")
