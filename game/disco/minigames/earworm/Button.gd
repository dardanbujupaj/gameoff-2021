extends RigidBody2D


onready var button = get_node("TextureButton")
onready var walk_anim = get_node("Walk")

var mouse_over = false

var timer

var velocity = Vector2()

var speed = 250
var moving = false

var direction = Vector2()


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving:
		direction = Vector2(1, 0).rotated(rotation).rotated(deg2rad(270)).normalized()
		linear_velocity = direction * delta * speed
		walk_anim.play("Walk")
	else:
		if not walk_anim.is_playing():
			walk_anim.stop()


func start_dancing() -> void:
	walk_anim.play("Dance")
	
func stop_dancing() -> void:
	walk_anim.stop()
	
func _on_TextureButton_pressed() -> void:
	$AudioStreamPlayer2D.play()
	$Wings.playback_speed = 2.0
	$Wings.play("Wings")
	button.pressed = true
	button.focus_mode = Control.FOCUS_CLICK
	#yield(get_tree().create_timer(0.5), "timeout")
	button.pressed = false
	button.focus_mode = Control.FOCUS_NONE
