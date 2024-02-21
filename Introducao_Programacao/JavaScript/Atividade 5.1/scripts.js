// No arquivo script.js capture os quatro elementos criados, e use a propriedade .innerText para adicionar conteúdo textual aos elementos 'h1' e 'a', e a propriedade .innerHTML para adicionar três itens simples na lista não ordenada, e três itens com links para outros sites na lista ordenada. 

let titulo = document.querySelector("#titulo");
let listaUl = document.querySelector("ul");
let tagA = document.querySelector("a");
let listaOl = document.querySelector("#lista-ordenada");

titulo.innerText = "Desenvolvimento 5.1";

tagA.innerText = "Site Proz Educação"

listaUl.innerHTML = 
`<ul>HML</ul>
<ul>CSS</ul>
<ul>JavaScript</ul>`;

listaOl.innerHTML = 
`<ol><a href="https://www.google.com">Google</a></ol>
 <ol><a href="https://prozeducacao.com.br">Proz Educação</a></ol>
 <ol><a href="https://www.youtube.com.br">Youtube</a></ol>`;
