extends Node2D


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/pretitle.dialogue"))
	
func _ready() -> void:
	DialogueManager.dialogue_ended.connect(_on_dialogue_manager_dialogue_ended)


func _on_dialogue_manager_dialogue_ended(resource: DialogueResource) -> void:
	get_tree().change_scene_to_file("res://Scenes/Title Screen/titlescreen.tscn")
