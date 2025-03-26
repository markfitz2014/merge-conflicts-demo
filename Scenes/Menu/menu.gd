class_name MainMenu
extends Control

@onready var margin_container: MarginContainer = $MarginContainer
@onready var play_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/PlayButton
@onready var options_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/OptionsButton
@onready var credits_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/CreditsButton
@onready var exit_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/ExitButton
@onready var output_label: Label = $VBoxContainer2/PanelContainer/OutputLabel
@onready var timer: Timer = $Timer



func _ready() -> void:
	handle_button_signals()


func handle_button_signals() -> void:
	play_button.button_down.connect(_on_play_button_down)
	options_button.button_down.connect(_on_options_button_down)
	credits_button.button_down.connect(_on_credits_button_down)
	exit_button.button_down.connect(_on_exit_button_down)


func _on_play_button_down() -> void:
	output_label.text = "Play button Pressed."
	await get_tree().create_timer(0.2).timeout
	output_label.text = ""
	get_tree().call_deferred("change_scene_to_file","res://Scenes/Main/main.tscn")


func _on_options_button_down() -> void:
	output_label.text = "Options button Pressed."
	await get_tree().create_timer(0.2).timeout
	output_label.text = ""


func _on_credits_button_down() -> void:
	output_label.text = "Credits button Pressed."
	await get_tree().create_timer(0.2).timeout
	output_label.text = ""


func _on_exit_button_down() -> void:
	output_label.text = "Exit button Pressed."
	await get_tree().create_timer(0.2).timeout
	output_label.text = ""
	_on_timer_timeout()


func _on_timer_timeout() -> void:
	get_tree().quit()
