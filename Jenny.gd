extends CharacterBody2D


const SPEED = 2000.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready():
	Dialogic.start("стартовый диалог")
	print("start")
func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta

#get input dir
	var direction := Input.get_axis("ui_left", "ui_right")
	
	#flip
	if direction > 0:
		animated_sprite.flip_h=false 
	elif direction < 0:
		animated_sprite.flip_h=true
		
	
	#play anim
	if direction == 0:
		animated_sprite.play("idle")
	else:
		animated_sprite.play("walk")
	#apply move
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
