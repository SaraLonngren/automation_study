=begin

    Estória
    Sendo um cliente correntista do banco
    Posso sacar dinheiro em caixas eletrônicos do banco
    Para que eu possa comprar em lugares que nao aceitam cartão

    Cenários:
    # Usuário deve ter uma conta corrente
    # O sistema deve verificar se o cliente tem saldo disponível
    # Ao fazer um saque, deve deduzir do saldo do cliente
    # No final, deve exibir uma mensagem de sucesso

    #O valor máximo de saque por transação é de 700 reais
=end

#teste unitario

require_relative '../app/conta' #pro ruby saber onde ta os atributos que ele precisa pegar.

describe('Saque no caixa eletronico')do
    it('Deve realizar um saque') do   
        cliente = Conta.new(1000)
        cliente.saca(500)
        
        expect(cliente.saldo).to eql 500
        expect(cliente.mensagem_de_saida).to eql 'Saque realizado com sucesso!'
    end 

    it('Quando o valor do saque é maior que o saldo disponivel')do
        cliente = Conta.new(100)
        cliente.saca(200)

        expect(cliente.saldo).to eql 100
        expect(cliente.mensagem_de_saida).to eql 'Saldo insuficiente'
    end

    it('Quando o valor do saque for maior que 700 reais')do 
        cliente = Conta.new(1000)
        cliente.saca(701)

        expect(cliente.saldo).to eql 1000
        expect(cliente.mensagem_de_saida).to eql 'Valor máximo por saque é 700 reais'
    end 
end 


# #BDD 
# Cenario: Saque no caixa eletronico

# Dado que eu tenho uma conta com R$ 1000
# Quando faço um saque de 500
# Então devo ver a seguinte mensagem "Saque realizado com sucesso"
# E meu saldo final passa a ser de R$ 500