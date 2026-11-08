extends Node

var nombre = "skibidisigma"
var momento = 0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func guardar_partida():
	var datos_guardado = {
		"nombre_jugador": nombre,
		"momento": 0
	}
	
	var archivo = FileAccess.open("res://guardado/guardado.json", FileAccess.WRITE)
	
	if archivo:
		var json_string = JSON.stringify(datos_guardado)
		archivo.store_string(json_string)
		archivo.close()
		print("¡Partida guardada con éxito!")
	else:
		print("Error al intentar guardar el archivo.")

func cargar_y_editar_partida():
	if not FileAccess.file_exists("res://guardado/guardado.json"):
		print("No hay ninguna partida guardada.")
		return
	
	var archivo = FileAccess.open("res://guardado/guardado.json", FileAccess.READ)
	
	if archivo:
		var json_string = archivo.get_as_text()
		archivo.close()
		
		var json = JSON.new()
		var error = json.parse(json_string)
		
		if error == OK:
			var datos_cargados = json.data
			
			datos_cargados["momento"] = momento 
			datos_cargados["nombre_jugador"] = nombre
			
			var archivo_escritura = FileAccess.open("res://guardado/guardado.json", FileAccess.WRITE)
			archivo_escritura.store_string(JSON.stringify(datos_cargados))
			archivo_escritura.close()
		else:
			print("Error al parsear el JSON: ", json.get_error_message())
