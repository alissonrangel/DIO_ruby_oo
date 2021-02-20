class MinhaClasse

end

objeto = MinhaClasse.new

p objeto.object_id

class Pessoa
    
    attr_accessor :nome
    attr_accessor :sobrenome
    
    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end

    def imprimir_ola
        puts "Olá #{@nome} #{@sobrenome}"
    end
    '''
    def sobrenome=(sobrenome3)
        $sobrenome = sobrenome3
    end
    def sobrenome
        $sobrenome
    end
    '''
end

rangel = Pessoa.new("Alisson", "Rangel")
p rangel
p rangel.imprimir_ola

puts "INSPECT : " + rangel.inspect

rangel2 = Pessoa.new("Alis2", "Rangel2")
p rangel2
rangel2.sobrenome = "Alves"
rangel2.imprimir_ola
p rangel2
p rangel2.sobrenome
p rangel2
