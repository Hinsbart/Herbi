extends Node2D

func _ready():
	get_node("SamplePlayer2D").play("win")
	get_node("hud/level").set_text("Level "+str(global.level))
	set_fixed_process(true)
	
func _fixed_process(delta):
	if int(get_node("player").get_pos().x) % 50 < 25:
		get_node("player").set_frame(0)
	else:
		get_node("player").set_frame(1)

func _on_AnimationPlayer_finished():
	get_tree().change_scene("res://scenes/main.tscn")
