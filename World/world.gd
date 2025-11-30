extends Node2D

@onready var main_menu: Control = $Main_Menu_Screen/main_menu
@onready var player: CharacterBody2D = $Player
@onready var score: CanvasLayer = $Score
@onready var animated_ceri: AnimatedSprite2D = $Score/ceri/AnimatedSprite2D
@onready var animated_diamond: AnimatedSprite2D = $Score/diamond/AnimatedSprite2D
@onready var finish_ui: CanvasLayer = $finishUI


func _ready() -> void:
	player.can_move = false   # tidak bisa bergerak saat menu pertama tampil


func _process(delta: float) -> void:
	# Jika tombol pause ditekan, munculkan menu & hentikan pergerakan
	if Input.is_action_just_pressed("pause"):
		main_menu.show()
		score.visible = false
		player.can_move = false


func _on_mulai_pressed() -> void:
	main_menu.hide()
	score.visible = true
	animated_ceri.play("ceri")
	animated_diamond.play("diamond")
	player.can_move = true    # aktifkan pergerakan saat menu di-hide
	



func _on_keluar_pressed() -> void:
	get_tree().quit()


func _on_restart_pressed() -> void:
	score.resetPoin()
	finish_ui.resetPoin1()
	get_tree().reload_current_scene()
