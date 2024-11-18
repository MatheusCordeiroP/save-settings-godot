extends Node2D

@export var volume: SpinBox
@export var idioma: OptionButton
@export var efeito: CheckButton

func _ready() -> void:
	#Recupera as informações para os componentes na tela
	volume.value = Global.volume
	idioma.selected = Global.idioma
	efeito.button_pressed = Global.efeito

func apply_new_settings():
	#Define as variáveis globais como as variaveis selecionadas aqui
	Global.volume = volume.value
	Global.idioma = idioma.selected
	Global.efeito = efeito.button_pressed
	
	#Salva de fato as informações
	Global.save_game_settings()
