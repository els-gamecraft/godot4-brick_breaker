extends RigidBody2D

class_name Brick

signal brick_destroyed

var level = 1

@onready var sprite_2d = $Sprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var explosion_sound: AudioStreamPlayer = $ExplosionSound
@onready var brick_destroyed_sound: AudioStreamPlayer = $BrickDestroyedSound

var sprites: Array[Texture2D] = [
	preload("res://Assets/Brick-Yellow.png"),
	preload("res://Assets/Brick-Blue.png"),
	preload("res://Assets/Brick-Orange.png"),
	preload("res://Assets/Brick-Green.png"),
	preload("res://Assets/Brick-Gray.png"),
	preload("res://Assets/Brick-Red.png")
]

func get_size():
	return collision_shape_2d.shape.get_rect().size
	

func set_level(new_level: int):
	level = new_level
	sprite_2d.texture = sprites[new_level - 1]
	
func decrease_level():
	if level > 1:
		set_level(level - 1)
		explosion_sound.play()
	else: 
		fade_out()
		brick_destroyed_sound.play()
		
		
func fade_out():
	collision_shape_2d.disabled = true
	var tween = get_tree().create_tween()
	tween.tween_property(sprite_2d, "modulate", Color.TRANSPARENT, .5)
	tween.tween_callback(destroy)
	
func destroy():
	queue_free()
	brick_destroyed.emit()
	
func get_width():
	return get_size().x

	

