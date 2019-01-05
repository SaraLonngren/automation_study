#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um usuário
    Posso fazer meu Cadastro
    Para poder anunciar o meu carro

    Cenário: Cadastro simplificado

        Dado que meu nome completo é "Fernando Papito"
        E meu email é válido
        E preencho o campo senha com "123456"
        Quando clico em Cadastrar
        Então meu cadastro deve ocorrer com sucesso

    Cenário: Email incorreto

        Dado que meu nome completo é "Fernando Papito"
        E meu email é incorreto
        E preencho o campo senha com "123456"
        Quando clico em Cadastrar
        Então devo ver a mensagem "Email incorreto"

    Cenário: Nome em branco

        Dado que meu nome completo é ""
        E meu email é válido
        E preencho o campo senha com "123456"
        Quando clico em Cadastrar
        Então devo ver a mensagem "Nome deve ser preenchido"