extends Control


func _on_space_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/western_level.tscn");
	
	
	


func _on_western_pressed():
	
	get_tree().change_scene_to_file("res://Scenes/Levels/space_level.tscn");
	
	
	


func _on_title_pressed() -> void:
		get_tree().change_scene_to_file("res://Scenes/Title Screen/titlescreen.tscn")
