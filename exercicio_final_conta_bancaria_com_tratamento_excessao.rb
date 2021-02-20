class ContaBancaria
      
    attr_accessor :saldo

    private

    def initialize(saldo)
        @saldo = saldo
    end
    
    def transferir(valor)
        if @saldo >= valor
            @saldo -= valor
            puts "Valor descontado: R$ #{valor}"
            return true
        end 
        
        raise "Não tem saldo superior ou igual a #{valor}!!!"            
    end
end

class ContaCorrente < ContaBancaria
    @@tarifa = 0.01    
    def initialize(valor)
        super(valor)
    end
    def transferir(conta2, valor)
        valor_descontado = (valor * (1 + @@tarifa))        
        conta2.saldo += valor if super(valor_descontado)
    end
end

class ContaPoupanca < ContaBancaria
    def initialize(valor)
        super(valor)
    end
    def transferir(conta2, valor)        
        conta2.saldo += valor if super(valor)
    end
end

cc1 = ContaCorrente.new(10100.00)
cc2 = ContaCorrente.new(20000.00)
cc3 = ContaCorrente.new(30000.00)

cp1 = ContaPoupanca.new(4000.00)
cp2 = ContaPoupanca.new(6000.00)
cp3 = ContaPoupanca.new(8000.00)

begin
    cp1.transferir(cp2, 5000)
rescue StandardError => meu_erro
    puts "Não foi possível transferir: #{meu_erro.message}"
end
puts "cp1 saldo atual #{cp1.saldo}"

begin
    cc1.transferir(cc2, 11000)
rescue StandardError => meu_erro
    puts "Não foi possível transferir: #{meu_erro.message}"
end
puts "cc1 saldo atual #{cc1.saldo}"

# cb = ContaBancaria.new(1000)
# puts "cb saldo atual #{cb.saldo}"