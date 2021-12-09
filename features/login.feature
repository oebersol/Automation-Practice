#language:pt
@login
Funcionalidade: Acessar conta
    Sendo um visitante do site Automation Pratice
    Quero acessar o meu cadastro
    Para que eu possa realizar as compras no site

    @happy
    Cenário: Login
        Dado que acesso a página de login
        Quando submeto o meu login com: "badroanosobanol@gmail.com" e "12345"
        Então devo ser redirecionado para a área logada

    @sad
    Esquema do Cenário: Tentativa de login

        Dado que acesso a página de login
        Quando submeto o meu login com: "<email>" e "<senha>"
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                     | senha | mensagem_saida             |
            | blablabal@gmail.com       | 11123 | Authentication failed.     |
            |                           | 11123 | An email address required. |
            | badroanosobanol@gmail.com |       | Password is required.      |
            | badroanosobanol@gmail.com | 12341 | Authentication failed.     |
            |                           |       | An email address required. |
