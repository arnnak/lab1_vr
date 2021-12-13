extends Node

var task_idx = 0

export(NodePath) var first_area
export(NodePath) var second_area
export(NodePath) var third_area
export(NodePath) var fourth_area
export(NodePath) var first_item
export(NodePath) var second_item
export(NodePath) var third_item
export(NodePath) var fourth_item
export(NodePath) var fifth_item
export(NodePath) var sixth_item
export(NodePath) var seventh_item
export(NodePath) var eighth_item
export(NodePath) var ninth_item

func _ready():
	pass # Replace with function body.


func _on_CounterPlacement_action_completed():
	if task_idx == 0:
		task_idx = task_idx + 1
		get_node(second_item).visible = true
	elif task_idx == 1:
		task_idx = task_idx + 1
		get_node(third_item).visible = true
	elif task_idx == 2:
		task_idx = task_idx + 1
		get_node(fourth_item).visible = true
	elif task_idx == 3:
		task_idx = task_idx + 1
		get_node(fifth_item).visible = true
	elif task_idx == 4:
		task_idx = task_idx + 1
		get_node(sixth_item).visible = true
	elif task_idx == 5:
		task_idx = task_idx + 1
		get_node(second_area).monitoring = true
		get_node(second_area).visible = true
		


func _on_OvenPlacement_action_completed():
	if task_idx == 6:
		task_idx = task_idx + 1
		get_node(first_area).monitoring = false
		get_node(first_area).visible = false
		get_node(third_area).monitoring = true
		get_node(third_area).visible = true
		get_node(seventh_item).visible = true


func _on_FTablePlacment_action_completed():
	if task_idx == 7:
		task_idx = task_idx + 1
		get_node(eighth_item).visible = true
		get_node(second_area).monitoring = false
		get_node(second_area).visible = false
	elif task_idx == 8:
		task_idx = task_idx + 1
		get_node(ninth_item).visible = true
		get_node(fourth_area).monitoring = true
		get_node(fourth_area).visible = true


func _on_STablePlacement_action_completed():
	if task_idx == 9:
		get_node(third_area).monitoring = false
		get_node(third_area).visible = false
		print("task complete")
