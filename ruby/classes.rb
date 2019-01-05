class Animal
    attr_accessor :nome, :cor, :raca

  # o construtor da classe é executado automaticamente
  def initialize(nome, cor, idade)
    @nome = nome
    @cor = cor
    @raca = raca
  end

  def comer(comida)
    puts 'Comendo ' + comida
  end 
end

class Cachorro < Animal
    attr_accessor :acessorio

  def late
    puts @nome
    puts 'au,au...'
  end

  def caga_na_sala
    puts 'Cagando na sala...'
  end 
end

class Gato < Animal
    def mia
        puts @nome
        puts 'miau...'

    end
end 

snoop = Cachorro.new('Snoop', 'preto e branco', 'beagle')
snoop.late
snoop.comer('macarrao')

spike = Cachorro.new('Spike', 'Cinza', 'Bulldog')
spike.late

tom = Gato.new('tom', 'cinza escuro', 'Perça')
tom.mia