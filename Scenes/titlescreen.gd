extends Control

#Title screen is set to main scene so it's the first thing that runs.


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/main.tscn");




func _on_version_button_pressed() -> void:
	#Get Tree to Version Notes
	print("Version Notes")




func _on_credits_button_pressed() -> void:
	#Get Tree to Credits
	print("Credits")
