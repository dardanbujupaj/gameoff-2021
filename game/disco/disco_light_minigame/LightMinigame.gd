extends Node2D




func _on_Start_pressed() -> void:
	SceneLoader.goto_scene("res://game/disco/disco_light_minigame/source/Levels/LMG_Level_1.tscn")
	MusicEngine.play_song("Club2")



func _on_Quit_pressed() -> void:
	SceneLoader.goto_scene("res://game/disco/disco_overview/DiscoOverview.tscn")
	
	pass # Replace with function body.
