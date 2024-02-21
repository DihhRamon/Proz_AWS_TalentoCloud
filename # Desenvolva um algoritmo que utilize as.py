# Desenvolva um algoritmo que utilize as seguintes características de um veículo:
# - Quantidade de rodas;
# - Peso bruto em quilogramas;
# - Quantidade de pessoas no veículo.

# Com essas informações, o programa mostrará qual é a melhor categoria de habilitação para o veículo informado a partir das condições:
# A: Veículos com duas ou três rodas;
# B: Veículos com quatro rodas, que acomodam até oito pessoas e seu peso é de até 3500 kg;
# C: Veículos com quatro rodas ou mais e com peso entre 3500 e 6000 kg;
# D: Veículos com quatro rodas ou mais e que acomodam mais de oito pessoas; 
# E: Veículos com quatro rodas ou mais e com mais de 6000 kg.

# - Quantidade de rodas;
rodas = int(input("Quantas rodas possuim o veículo ? "));
# - Peso bruto em quilogramas;
peso_bruto = float(input("Qual o peso do veículo (em Kg) ? "));
# - Quantidade de pessoas no veículo.
pessoas = int(input("Quantas pessoas estão dentro do veículo? "))

# A: Veículos com duas ou três rodas;
if (rodas == 2 or rodas == 3):
    print ("O veiculo pertence ao grupo A")
elif (rodas == 4 and pessoas <=8 and peso_bruto<=3500):
    print ("O veiculo pertence ao grupo B")
elif (rodas >= 4 and peso_bruto > 3500 and peso_bruto < 6000):
    print ("O veículo pertence ao gripo C")
elif (rodas >= 4 and pessoas > 8):
    print ("O veículo pertence ao grupo D")
# E: Veículos com quatro rodas ou mais e com mais de 6000 kg.
elif (rodas >= 4 and peso_bruto >= 6000):
    print ("O veículo pertence ao grupo E")
else:
    print ("O veículo não pertence a nenhuma dessas categorias")