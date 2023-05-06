extends Control

onready var lang_dropdown = $Panel/VBoxContainer/LangDropdown

# Called when the node enters the scene tree for the first time.
func _ready():
	Console.write_line("Options menu loaded")
	lang_dropdown.add_item("English", 0)
	lang_dropdown.add_item("Spanish", 1)
	lang_dropdown.add_item("French", 2)
	pass



func _on_LangDropdown_item_selected(index:int):
	Console.write_line("Language selected: " + str(index))
