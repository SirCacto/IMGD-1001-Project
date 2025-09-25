extends Control

#Title screen is set to main scene so it's the first thing that runs.
@onready var animation_player: AnimationPlayer = $AnimationPlayer

#DEBUG STARTBUTTON
#func _on_start_button_pressed():
	#get_tree().change_scene_to_file("res://Scenes/Title Screen/debugmenu.tscn");

func _on_start_button_pressed():
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/entered_school.dialogue"))
	
func _ready() -> void:
	DialogueManager.dialogue_ended.connect(_on_dialogue_manager_dialogue_ended)

func _on_dialogue_manager_dialogue_ended(resource: DialogueResource) -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/western_level.tscn");


func _on_version_button_pressed() -> void:
	print("Version Notes")
	animation_player.play("VN In")


func _on_credits_button_pressed() -> void:
	print("Credits")
	animation_player.play("Credits In")
	
func _on_close_credits_button_pressed() -> void:
	print("Close")
	animation_player.play("Credits Out")


func _on_close_vn_button_pressed() -> void:
	print("Close")
	animation_player.play("VN Out")

	
