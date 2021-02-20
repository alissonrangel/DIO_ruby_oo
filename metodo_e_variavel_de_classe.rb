class Pessoa
    @@numero_de_pessoas = 0 # var de classe
    
    def self.gerar # metodo de classe
        @@numero_de_pessoas += 1
        puts "Vou fazer antes"
        Pessoa.new
    end

    def self.numero_de_pessoas
        @@numero_de_pessoas
    end
    
    def met_instancia # metodo de instancia visualiza variaveis de classe
        puts "Met instancia #{ @@numero_de_pessoas }"
        puts @@numero_de_pessoas
    end

end

pessoa1 = Pessoa.gerar
pessoa2 = Pessoa.gerar
pessoa3 = Pessoa.gerar
pessoa4 = Pessoa.gerar


puts Pessoa.numero_de_pessoas

pessoa1.met_instancia