extends Control


func game_over():
	if get_tree():
		get_tree().paused = true
		show()


func restart():
	get_tree().paused = false
	get_tree().reload_current_scene()


func exit_game():
	get_tree().quit()
