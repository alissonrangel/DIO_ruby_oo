
# lista = [ 1, 5, 8, 3, 0, 9, 6, 4, 10, 7, 2]
print 'Digite a quantidade de elementos: '
qtd = gets.strip.to_i

lista = []
until qtd == 0
    lista << qtd
    qtd -= 1
end

def swap(a, b)
    a = a + b
    b = a - b
    a = a - b
end

def metodo_bolha(lista)
    for i in 0..(lista.count - 1)
        a = lista[i]
        for j in 0..(lista.count - 1)
            b = lista[j]
            if lista[i] < lista[j]                 
                aux = lista[i]
                lista[i] = lista[j]
                lista[j] = aux                
                '''
                lista[i] = lista[i] + lista[j]
                lista[j] = lista[i] - lista[j]
                lista[i] = lista[i] - lista[j]
                '''
                
            end
        end
        p lista
    end
    lista
end

p metodo_bolha(lista)


