extends Area2D

var interactible = false
var PlayedBefore = false
func _on_body_entered(body: Node2D) -> void:
	interactible = true

func _input(event):
	if interactible and !PlayedBefore:
		if Input.is_action_just_pressed("interact"):
			Dialogic.start("Garbage can")
			PlayedBefore = true
			
