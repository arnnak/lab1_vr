extends Area

export (String) var first_target_name
export (String) var second_target_name
export (String) var third_target_name
export (String) var fourth_target_name
export (String) var fifth_target_name
export (String) var sixth_target_name

var bowl_in_place = false
var flour_in_place = false
var oil_in_place = false
var egg_in_place = false
var powder_in_place = false
var spoon_in_place = false

signal action_completed

func _on_CounterPlacement_body_entered(body):
	if not bowl_in_place:
		if body.name == first_target_name:
			bowl_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			#body.mode = RigidBody.MODE_STATIC
			body.translation.y = 0.05
			emit_signal("action_completed")
	if not flour_in_place:
		if body.name == second_target_name:
			flour_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")
	if not egg_in_place:
		if body.name == third_target_name:
			egg_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")
	if not oil_in_place:
		if body.name == fourth_target_name:
			oil_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")
	if not powder_in_place:
		if body.name == fifth_target_name:
			powder_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")
	if not spoon_in_place:
		if body.name == sixth_target_name:
			spoon_in_place = true
			var parent = body.get_parent()
			parent.remove_child(body)
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation.y = 10
			body.visible = false
			emit_signal("action_completed")

