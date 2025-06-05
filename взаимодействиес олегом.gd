extends Area2D
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
var interactible = false
var PlayedBefore = false
func _on_body_entered(body: Node2D) -> void:
	interactible = true
	


func _on_body_exited(body: Node2D) -> void:
	interactible = false
	


func _input(event):
	if interactible and !PlayedBefore:
		if Input.is_action_just_pressed("interact"):
			animated_sprite.play("huggies")
			PlayedBefore = true
			
