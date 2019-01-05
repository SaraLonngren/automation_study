class Conta
  attr_accessor :saldo, :mensagem_de_saida

  def initialize(saldo)
    @saldo = saldo
  end

  def saca(valor)
    if valor > @saldo
      @mensagem_de_saida = 'Saldo insuficiente'
    elsif valor > 700
      @mensagem_de_saida = 'Valor máximo por saque é 700 reais'
    else
      @saldo -= valor
      @mensagem_de_saida = 'Saque realizado com sucesso!'
    end
  end
end
