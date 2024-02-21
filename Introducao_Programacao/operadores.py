# Exercício 1
bebidaFavorita = "Caipirinha";
print(bebidaFavorita);
print(type(bebidaFavorita));

print("-------------------------")
bebidaPreco = 7.99;
print(bebidaPreco);
print(type(bebidaPreco));

print("-------------------------")
alcolica = True;
print(alcolica);
print(type(alcolica));

# Exercício 2
almocoFavorito = "Lasanha";
almocoPreco = 50.75;
orcamento = 50.00;
amigoDinheiro = True;

print("Meu almoço favorito é",almocoFavorito, "e o valor é de R$",almocoPreco)
print("O meu orçamento é de R$",orcamento)

if(orcamento >= almocoPreco):
    print("Não posso comprar o almoço")
elif(amigoDinheiro == False):
    print("Pedir ajuda ao amigo")
else:
    print("Sair correndo do restaurante !")