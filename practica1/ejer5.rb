#Contar la cantidad de apariciones del string 2 en el string 1 pasados como parametros de la función

def contar(str_1, str_2)
	str_1.scan(Regexp.new(str_2, "i")).length
end

puts contar("La casa en el bosque casa chala casa", "cAsa")