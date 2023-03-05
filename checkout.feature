#language: pt


Funcionalidade: Tela de cadastro - Checkout
Como usuário logado na Ebac Shopp
Quero concluir meu cadastro 
Para Finalizar minha compra 

Contexto:
Dado que eu acesse a página de checkout da plataforma EBAC Shopp

Cenário: Cadastro do campo email inválido
Quando eu digitar um  Email inválido
Então deve exibir uma mensagem "email inválido"


Cenário: Finalizar compra
Quando eu cadastrar todos os campos obrigatórios
Então deve habilitar o campo "finalizar compra"


Esquema do Cenário: Validar campos obrigatórios
Quando eu preencher <Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Telefone>, <Email>, <mensagem>
E clicar no botão Checkout
Então deve exibir a <mensagem>

Exemplos:
|Nome | Sobrenome | País | Endereço | Cidade | CEP | Telefone | Email | mensagem |
|"Márcio" | "Pinheiro" | "BR" | "Rua Dona Julia, 330" | "09760300" | "9999 9999" | "marcio@g.com.br" | "Informações Válidas" |
|"" | "Pinheiro" | "BR" | "Rua Dona Julia, 330" | "09760300" | "9999 9999" | "marcio@g.com.br" | "Por favor, preencher todos os campos obrigatórios" |
|"Márcio" | "" | "BR" | "Rua Dona Julia, 330" | "09760300" | "9999 9999" | "marcio@g.com.br" | "Por favor, preencher todos os campos obrigatórios" |
|"Márcio" | "Pinheiro" | "" | "Rua Dona Julia, 330" | "09760300" | "9999 9999" | "marcio@g.com.br" | "Por favor, preencher todos os campos obrigatórios" |
|"Márcio" | "Pinheiro" | "BR" | "" | "09760300" | "9999 9999" | "marcio@g.com.br" | "Por favor, preencher todos os campos obrigatórios" |
|"Márcio" | "Pinheiro" | "BR" | "Rua Dona Julia, 330" | "" | "9999 9999" | "marcio@g.com.br" | "Por favor, preencher todos os campos obrigatórios" |
|"Márcio" | "Pinheiro" | "BR" | "Rua Dona Julia, 330" | "09760300" | "" | "marcio@g.com.br" | "Por favor, preencher todos os campos obrigatórios" |
|"Márcio" | "Pinheiro" | "BR" | "Rua Dona Julia, 330" | "09760300" | "9999 9999" | "" | "Por favor, preencher todos os campos obrigatórios" |

