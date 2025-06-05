extends Area2D
@onready var bellllka: Area2D = $Area2D
func _on_body_entered(body: Node2D) -> void:
	bellllka.play("belka")

			
