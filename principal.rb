require "./classes/pessoa"
require "./classes/carro"
require "awesome_print"

pessoa = Pessoa.new("Alisson")

carro = Carro.new("Gol",pessoa)

ap pessoa
ap carro