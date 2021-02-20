# Classe para testes de visibilidade de métodos
class MinhaClasse
  def m1
    puts 'Método 1'
    m2
    m3
  end

  def m5
    puts 'Método 5'
  end

  # private # tudo abaixo de private fica privado

  private def m2 # apenas o método em questão é privado
    puts 'Método 2 privado'
  end

  protected # tudo aqui em baixo é protected
  def m3
    puts 'Método 3 protected'
  end
end

class MinhaSubClasse < MinhaClasse
  def m4
    puts 'Inicio do m4'
    m1
    m2 # tem acesso ao método privado da classe pai
    m3
    puts 'Método 4'
    outro_objeto = MinhaClasse.new
    # outro_objeto.m2 # Não permite, pois criou-se uma outra instancia
    outro_objeto.m3 # permite pois o m3 é protected, é chamado por qq inst da mesma classe/superclasse
    outro_objeto.m5 # permite pois o m5 é public
    puts 'Fim do m4'
  end
end

obj = MinhaClasse.new

# obj.m1
# obj.m2
# obj.m3

obj2 = MinhaSubClasse.new

obj2.m4
# obj2.m3 # Aqui o protected não tem acesso