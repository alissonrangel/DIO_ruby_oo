class Singleton
    @instance = new
    def self.instance
        @instance
    end
end

instancia1 = Singleton.instance
instancia2 = Singleton.instance

puts "#{instancia1.equal?(instancia2)}"
