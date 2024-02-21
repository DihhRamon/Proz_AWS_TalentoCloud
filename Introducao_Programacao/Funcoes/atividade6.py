# Desenvolva um programa que recebe do usuário nome completo e ano de nascimento que seja entre 1922 e 2021.
# A partir dessas informações, o sistema mostrará o nome do usuário e a idade que completou, ou completará, no ano atual (2022).

# Caso o usuário não digite um número ou apareça um inválido no campo do ano, o sistema informará o erro e continuará perguntando até que um valor correto seja preenchido.

anoCorreto = False

while(anoCorreto == False):
    print("Digite seu nome completo: ")
    nome = input()

    print("Digite o ano do seu nascimento: ")

    try:
        nascimento = int(input())
        if 1922 <= nascimento <= 2022:
            anoCorreto = True
            print("\nNome Completo: ", nome, "\nVocê tem: ", 2023 - nascimento , "anos")
        else:
          print("Ano de Nascimento Inválido ! \nDigite um ano de nascimento entre 1922 e 2022")
    except ValueError:
          print("Caracter inválido, por favor digite um número")
