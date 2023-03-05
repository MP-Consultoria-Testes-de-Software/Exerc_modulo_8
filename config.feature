#language: pt


Funcionalidade: Configurar produto
Como usuário logado na Ebac Shopp
Quero configurar tamanho de cada produto
E a cor de cada produto
E a quantidade de cada produto
Para incluir no carrinho de compras
E também limpar as configurações do produto

Contexto:
Dado que eu acesse a página de produtos da plataforma EBAC Shopp

Cenário: Configurar produto
Quando eu selecionar a opção de tamanho disponível
E eu selecionar a opção de cor disponível
Então deve habilitar o campo quantidade e o botão comprar

Cenário: Configurar lista com mais de 10 produtos
Quando eu selecionar o 11o item da lista do carrinho de compras
Então exibir uma mensagem "Só é permitido carrinho com 10 itens"

Cenário: Configurar quantidade do produto maior que o estoque
Quando eu digitar a quantidade maior que o estoque
Então deve exibir uma mensagem "Quantidade indisponível"

Cenário: Configurar quantidade do produto dentro do estoque
Quando eu digitar a quantidade dentro do estoque
Então deve incluir o item no carrinho de compras

Cenário: Limpar 
Quando eu selecionar o link 'limpar'
Então deve voltar o campo tamanho, cor e quantidade ao estado original



