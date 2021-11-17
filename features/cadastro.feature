#language:pt
@cadastro
Funcionalidade: Cadastro de Usuários.
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

Cenário: Cadastro.
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email       |emeraldo@gmail.com        |
        |nome        |Emeraldo                  |
        |ultimo_nome |Odilon                    |
        |senha       |12345                     |
        |endereco    |Rua dos Bergamota, 1010   |
        |universidade|IFRG                      |
        |profissao   |Técnico de futebol        |
        |idade       |125                       |
    Então devo ser redirecionado para a área logada

Cenário: Email não informado.
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o email.
    Então devo ver Oops! Informe seu email

Cenário: Senha não informada.
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha.
    Então devo ver Oops! Informe sua senha

Cenário: Senha divergente.
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente
    Então devo ver Opps! Senhas não são iguais

Cenário: Nenhum campo preenchido.
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver Opps! Informe seu email e sua senha
