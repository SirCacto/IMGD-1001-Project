extends Control

#Title screen is set to main scene so it's the first thing that runs.
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/main.tscn");




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
	
