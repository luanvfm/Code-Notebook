from datetime import datetime

valor = float
sensor = str(input("Digite o número do sensor: "))
data_hora = datetime.now()
data_formatada = data_hora.strftime("%d/%m/%Y %H:%M:%S")

sensor_data = {
    "valor": valor,
    "sensor": sensor,
    "data_hora": data_formatada
}

print("informações do sensor", sensor_data)


numero_de
