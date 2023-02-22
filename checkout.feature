#language: pt


Funcionalidade: Tela de cadastro - Checkout
Como usuário logado na Ebac Shopp
Quero concluir meu cadastro 
Para Finalizar minha compra 

Contexto:
Dado que eu acesse a página de checkout da plataforma EBAC Shopp

Cenário: Finalizar compra
Quando eu cadastrar o nome 
E Sobrenome
E Pais
E Endereço
E Cidade
E CEP
E Telefone
E Email
Então deve habilitar o campo "finalizar compra"

Cenário: Cadastro do campo email inválido
Quando eu cadastrar o Email
E for um dado inválido
Então deve exibir uma mensagem "email inválido"
E desabilitar o botão "finalizar compra"


Cenário: Finalizar compra
Quando eu cadastrar o Nome com valor vazio
Ou Sobrenome com valor vazio
Ou País com valor vazio
Ou Endereço com valor vazio
Ou Cidade com valor vazio
Ou CEP com valor vazio 
Ou Telefone com valor vazio
Ou Email com valor vazio
Então deve desabilitar o campo "finalizar compra"


Esquema do Cenário: Finalizar Compra
Quando eu digitar o <Nome>
e o <Sobrenome>
e o <País>
e o <Endereço>
e a <Cidade>
e o <CEP> 
e o <Telefone>
e o <Email>
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

