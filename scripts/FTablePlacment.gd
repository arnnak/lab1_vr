extends Area


export (String) var first_target_name
export (String) var second_target_name

var cake_in_place = false
var knife_in_place = false

signal action_completed

func _on_FTablePlacment_body_entered(body):
	if not cake_in_place:
		if body.name == first_target_name:
			cake_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 0.05
			emit_signal("action_completed")
	if not knife_in_place:
		if body.name == second_target_name:
			knife_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")
