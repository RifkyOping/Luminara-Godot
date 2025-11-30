class_name Player
extends CharacterBody2D

const SPEED = 110.0
const JUMP_VELOCITY = -300.0

@onready var animated_sprite_2d = $AnimatedSprite2D
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Tambahkan variabel untuk kontrol pergerakan
var can_move: bool = false

func _physics_process(delta):
	# Jika belum boleh bergerak, hentikan semua aksi
	if not can_move:
		velocity.x = 0
		animated_sprite_2d.play("idle")
		return
	
	# Tambahkan gravitasi
	if not is_on_floor():
		velocity.y += gravity * delta

	# Lompat
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Gerakan kiri/kanan
	var input_axis = Input.get_axis("ui_left", "ui_right")
	if input_axis != 0:
		# Jika tombol speedRun (Shift) ditekan → kecepatan 2x lipat
		if Input.is_action_pressed("speedRun"):
			velocity.x = input_axis * (SPEED * 2)
			animated_sprite_2d.play("run_fast") # animasi lari cepat (pastikan ada di AnimatedSprite2D)
		else:
			velocity.x = input_axis * SPEED
			animated_sprite_2d.play("run")
	else:
		# Jika tidak menekan tombol arah
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if is_on_floor():
			animated_sprite_2d.play("idle")

	move_and_slide()

	# Update arah sprite
	if input_axis != 0:
		animated_sprite_2d.flip_h = input_axis < 0

	# Jika di udara, tampilkan animasi lompat
	if not is_on_floor():
		animated_sprite_2d.play("jump")
