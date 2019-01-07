#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um usuário
    Posso fazer meu Cadastro
    Para poder anunciar o meu carro

    @cadastro
    Cenário: Cadastro simplificado

        # Dado que meu nome completo é "Fernando Papito"
        # E meu email é "fernando@papio.io"
        # E preencho o campo senha com "123456"
        # E meu celular é "88555555555"
        # E meu CEP é "00000000" (foi tirado do exemplo abaixo)
        # Quando clico em Cadastrar (foi tirado do exemplo abaixo)
        # Então meu cadastro deve ocorrer com sucesso

         #O código acima, por possuir mts campos, pode ser substituido por esse logo abaixo.
        
        Dado que eu tenho o seguinte cadastro   
            | nome  | Fernando        |
            | email | fernando@i7.com |
            | senha | 123456          |
        Quando clico em Cadastrar
        Então meu cadastro deve ocorrer com sucesso

    @cadastro_tentativa
    Esquema do Cenário: Tentativa de cadastro 

    # Dado que meu nome completo é "<nome>"
    # E meu email é "<email>"
    # E preencho o campo senha com "<senha>"
    # Quando clico em Cadastrar
    # Então devo ver a mensagem "<mensagem>"

    #outra forma de fazer o códgo acima é o abaixo:

    Dado que eu tenho o seguinte cadastro   
         | nome  | <nome>  |
         | email | <email> |
         | senha | <senha> |
    Quando clico em Cadastrar
    Então devo ver a mensagem "<mensagem>"

    Exemplos:
      | nome     | email               | senha  | mensagem                                |
      | Fernando | fernando&qaninja.io | 123456 | Email inválido.                         |
      | Fernando | fernando@qaninja.io | 12345  | Senha deve ter pelo menos 6 caracteres. |
      |          | fernando@qaninja.io | 123456 | Nome não informado.                     |
      | Fernando |                     | 123456 | Email não informado.                    |
      | Fernando | fernando@qaninja.io |        | Senha não informada.                    |


    # @email_incorreto
    # Cenário: Email incorreto

    #     Dado que meu nome completo é "Fernando Papito"
    #     E meu email é "fernando$algumacoisa.com"
    #     E preencho o campo senha com "123456"
    #     Quando clico em Cadastrar
    #     Então devo ver a mensagem "Email inválido."

    # @nome_branco
    # Cenário: Nome em branco

    #     Dado que meu nome completo é ""
    #     E meu email é "fernando@papiro.io"
    #     E preencho o campo senha com "123456"
    #     Quando clico em Cadastrar
    #     Então devo ver a mensagem "Nome deve ser preenchido"


    # @senha_pequena
    # Cenário: Senha com menos de 6 caracteres

    #     Dado que meu nome completo é "Fernando Papito"
    #     E meu email é "fernando@algumacoisa.com"
    #     E preencho o campo senha com "12345"
    #     Quando clico em Cadastrar
    #     Então devo ver a mensagem "Senha deve ter pelo menos 6 caracteres."