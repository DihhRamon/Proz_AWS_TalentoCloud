# Faça uma função calculadora que os números e as operações serão feitas pelo usuário. O código deve ficar rodando infinitamente até que o usuário escolha a opção de sair. No início, o programa mostrará a seguinte lista de operações:

# 1: Soma
# 2: Subtração
# 3: Multiplicação
# 4: Divisão
# 0: Sair

# Digite o número para a operação correspondente e caso o usuário introduza qualquer outro, o sistema deve mostrar a mensagem “Essa opção não existe” e voltar ao menu de opções.

# Após a seleção, o sistema deve pedir para o usuário inserir o primeiro e segundo valor, um de cada. Depois precisa executar a operação e mostrar o resultado na tela. Quando o usuário escolher a opção “Sair”, o sistema irá parar.




def calculadora():


    while True:
        print("-------------------------------------FUNÇÃO CALCULADORA--------------------------------------------------")
        print("\nGentileza escolher, conforme as opções abaixo, qual operação deseja realizar. Para finalizar digite 0 !")
        print("\nOpções de operações:\n\t1 - Soma \n\t2 - Subtração \n\t3 - Multiplicação \n\t4 - Divisão \n\t0 - Sair")

        print("Digite a opção da operação que deseja realizar: ")
        opcao = int(input())

        
        if opcao == 0:
            print("Função Calculadora Finalizada !")
            break
        elif opcao in (1, 2, 3, 4):
            print("Digite o primeiro número: ")
            num1 = int(input())

            print("Digite o segundo número: ")
            num2 = int(input())

        if opcao == 1: # Soma
            print(f"A soma de {num1} + {num2} é", num1 + num2)
        elif opcao == 2: #Subtração
            print(f"A subtraçao de {num1} - {num2} é", num1 - num2)
        elif opcao == 3: #Multiplicação
            print(f"A multiplicação de {num1} x {num2} é", num1 * num2)
        elif opcao == 4: #Divisão
            if num2 != 0:
                print(f"A divisão de {num1} / {num2} é", num1 / num2)
            else:
                print("Não é possível dividir por zero !")
        else: 
            return "Não existe a opção selecionada, escolha uma opção válida !"
    
calculadora()