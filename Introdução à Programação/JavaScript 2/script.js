// Captura de elementos do DOM (Declaração de Variáveis)

let quantidadeSubtotal = document.getElementById("quantidade-subtotal");
let valorSubtotal = document.getElementById("valor-subtotal");
let btnAdicionarProduto01 = document.getElementById("btn-adicionar-produto-01");
let qtdProduto01 = document.getElementById("quantidade-produto-01");
let valorProduto01 = 11.66


let subtotalInfo = {
    quantidade: 1,
    valor: 11.66,
}


// Definir a manipulação dos elementos capturados (funções)

function atualizarSubtotal(){
    quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
    valorSubtotal.innerText = subtotalInfo.valor.toFixed(2);
}

atualizarSubtotal()

function adicionarUm(){
// Adicionar 1 à quantidade do produto
qtdProduto01.value = Number(qtdProduto01.value) + 1

// Adicionar 1 à quantidade subtotal
subtotalInfo.quantidade = subtotalInfo.quantidade + 1

// Adicionar o valor do produto ao subtotal
subtotalInfo.valor = subtotalInfo.valor + valorProduto01

// Atualizar o DOM
atualizarSubtotal()
}

// Definir quando devem ser manipulados os elementos (eventos)
btnAdicionarProduto01.addEventListener("click", adicionarUm)