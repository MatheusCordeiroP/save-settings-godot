extends Node

var volume: int
var idioma: int
var efeito: bool

func save_game_settings():
	# Cria um novo objeto ConfigFile.
	var config = ConfigFile.new()

	# Guarda alguns valores.
	config.set_value("config", "volume", volume)
	config.set_value("config", "idioma", idioma)
	config.set_value("config", "efeito", efeito)

	# Salva isso em um arquivo (Ele sobreescreve se o arquivo já existe)
	config.save("user://config.cfg")
	
	print("Jogo Salvo")

func load_game_settings():
	var config_data = {}
	var config = ConfigFile.new()

	# Carrega informações de um arquivo.
	var err = config.load("user://config.cfg")

	# Se o arquivo não carregar, ele deve ignorar o resto.
	if err != OK:
		return
	
	#Pega as informações guardadas previamente, e guarda elas nas variáveis declaradas.
	volume = config.get_value("config", "volume")
	idioma = config.get_value("config", "idioma")
	efeito = config.get_value("config", "efeito")
	
	print("Jogo Carregado.")
