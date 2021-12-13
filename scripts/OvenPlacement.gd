extends Area


export (String) var first_target_name

var bowl_in_place = false

signal action_completed

func _on_OvenPlacement_body_entered(body):
	if not bowl_in_place:
		if body.name == first_target_name:
			bowl_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")


