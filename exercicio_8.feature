#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero Configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho


Cenário: Configurar preferências
Dado que eu acesse a página de produtos da EBAC-SHOP
Quando quando eu clicar no produto
Então deve ser possível alterar a cor, tamanho e quantidade

Cenário: Alterar quantidade
Dado que eu acesse o carrinho de compras
Quando eu alterar a quantidade de produtos
Então deve ser limitado a 10 produtos por venda

Cenário: Resetar preferências
Dado que eu altere cor, tamaho e quantidade de um produto
Quando eu clicar em "limpar"
Então deve voltar ao estado original


Funcionalidade: Tela de login
Como aluno do portal EBAC
Quero me autenticar
Para visualizar minhas novas

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC
Cenário: Autenticação válida
Quando eu digitar o usuário "joao@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá João"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "joao@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos:

| usuario            | senha       | mensagem   |
| "joao@ebac.com.br" | "senha@123" | "Olá João" |
| "jose@ebac.com.br" | "senha@123" | "Olá José" |
| "mari@ebac.com.br" | "senha@123" | "Olá Mari" |


Contexto:
Dado que eu acesse a página de cadastro da plataforma

Cenário: Dados obrigatórios
Quando eu abrir a tela de cadastro
Então devo preencher todas as informações com asterísco

Esquema do Cenário: Email inválido
Quando eu preencher a tela de cadastro com <email> de formato inválido
Então deve ser apresentado uma <mensagem> de erro

Esquema do Cenário: Campo vazio
Quando eu preencher a tela de cadastro com <email>
Então deve ser apresentado uma <mensagem de alerta

Exemplos:
| email              | mensagem                             | 
| "joao.com.br"      | "Formato de e-mail inválido"         | 
| ""                 | "O campo email não pode ficar vazio" |
