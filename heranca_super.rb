class Sensor
    def instalar
        puts "Estou instalando o sensor."
    end
    def iniciar
        puts "Estou inicializando o sensor."
    end
    def coletar_metricas
        # sensor normal
        puts "Estou coletando métricas."
        puts "Estou analizando métricas."
    end
end

class SensorTemperatura < Sensor
    def coletar_metricas
        # inicializar_componentes_temperatura
        puts "Estou coletando métricas de temperatura."
        super
    end
end

sensor = SensorTemperatura.new

sensor.instalar
sensor.iniciar
sensor.coletar_metricas