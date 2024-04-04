extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer
@onready var level_won: AudioStreamPlayer = $LevelWon
@onready var level_lost: AudioStreamPlayer = $LevelLost
#@onready var bgm_level_1: AudioStreamPlayer = $"../BGM_level_1"
#@onready var bgm_level_2: AudioStreamPlayer = $"../BGM_level_2"
#@onready var bgm_level_3: AudioStreamPlayer = $"../BGM_level_3"
#@onready var bgm_level_4: AudioStreamPlayer = $"../BGM_level_4"

@onready var bgm_level_1: AudioStreamPlayer = $BGM_level_1
@onready var bgm_level_2: AudioStreamPlayer = $BGM_level_2
@onready var bgm_level_3: AudioStreamPlayer = $BGM_level_3
@onready var bgm_level_4: AudioStreamPlayer = $BGM_level_4


func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes

func game_over():
	game_lost_container.show()
	level_lost.play()

func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	level_won_container.show()
	level_won.play()
	#bgm_level_1.stop()
	#bgm_level_2.play()
	
func _on_level_won_button_pressed():
	LevelDefinitions.current_level += 1
	#print(LevelDefinitions.current_level)
	get_tree().reload_current_scene()
	
	
	#if LevelDefinitions.current_level == (2+1):
		#bgm_level_1.stop()
		#bgm_level_2.play()
		#get_tree().reload_current_scene()
		#
	#elif LevelDefinitions.current_level == (3+1):
		#bgm_level_2.stop()
		#bgm_level_3.play()
		#get_tree().reload_current_scene()
	#
	#elif LevelDefinitions.current_level == (4+1):
		#bgm_level_3.stop()
		#bgm_level_4.play()
		#get_tree().reload_current_scene()
