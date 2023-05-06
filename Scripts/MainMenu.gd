extends Control


func print_sysinfo():
	Console.write_line("OS.get_name(): " + OS.get_name())
	Console.write_line("OS.get_processor_count(): " + str(OS.get_processor_count()))
	Console.write_line("OS.get_processor_name(): " + OS.get_processor_name())
	Console.write_line("OS.get_data_dir(): " + OS.get_data_dir() + "/Godot/app_userdata/KittyKana")
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/ButtonContainer/Start.grab_focus()

	Console.add_command("sysinfo", self, "print_sysinfo")\
		.set_description("Prints system information")\
		.register()

	pass # Replace with function body.

func _on_Start_pressed():
	Console.write_line("Start")
	pass

func _on_Quit_pressed():
	Console.write_line("Quit")
	get_tree().quit()
	pass
