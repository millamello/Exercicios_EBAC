            #language: pt

Funcionalidade: Tela de login
Como aluno do portal EBAC
Quero me autenticar
Para visualizar minhas notas

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Autenticação válida
Quando eu digitar o usuário "joao@ebac.com.br"
E a senha "senha@123"
Então deve exibir a mensagem de boas vindas "Olá João"

Cenário: Usuário inexistente
Quando eu digitar o usuário "ninguem@ebac.com.br"
E a senha "senha@123"
Então deve exibir a mensagem de alerta "Usuário inexistente"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "invalido@ebac.com.br"
E a senha "senha@123"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitar o usuário <usuario>
E a senha <senha>
Então deve exibir a mensagem de sucesso <mensagem>

Exemplos:
| usuario            | senha       | mensagem   |
| "joao@ebac.com.br" | "senha@123" | "Olá João" |
| "jose@ebac.com.br" | "senha@123" | "Olá José" |
| "mari@ebac.com.br" | "senha@123" | "Olá Mari" |
            
