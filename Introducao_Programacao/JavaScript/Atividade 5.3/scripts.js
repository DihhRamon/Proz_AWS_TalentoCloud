// 1 - Criar um elemento HTML;

let titulo = document.createElement("h1");

let produto = document.createElement("div")


// 2 - popular e manipular esse elemento HTML;

titulo.innerText = "Venda de Produtos"

titulo.id = "title"

produto.innerHTML = 
`<h2 class="produto">Produto 01 - Coca-Cola</h2>
 <p>Descrição do Produto: Refrigerante Coca-Cola 2 litros</p>
 <img src="./coca-cola.png" alt="Coca-Cola 2 litros">  
 <p>Preço: R$ 9,80</p>
`

// 3 - Adicionar o elemento HTML no DOM.

let pagina = document.querySelector("body")

pagina.appendChild(titulo)

pagina.appendChild(produto)

// console.log(titulo);