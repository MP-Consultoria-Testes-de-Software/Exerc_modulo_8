#language: pt

Funcionalidade: Tela de login
Como cliente da Ebac Shopp
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de login da plataforma EBAC Shopp

Cenário: Autenticação Válida
Quando eu digitar o usuário "marcio@google.com"
E a asenha "marcio@123"
Então deve exibir a tela de checkout

Cenário: Usuário inexistente
Quando eu digitar o usuário "xxx@google.com"
E a asenha "marcio@123"
Então deve exibir uma mensagem "usuário inexistente"

Cenário: Senha inválida
Quando eu digitar o usuário "marcio@google.com"
E a asenha "xxx@123"
Então deve exibir uma mensagem "senha inválida"
