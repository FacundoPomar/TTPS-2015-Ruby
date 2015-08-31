#Escribi una funcion llamada "reemplazar" que reciba un String y que busque y reemplace en el mismo, cualquier ocurrencia de { por "do\n" y
#cualquier ocurrencia de } por "\nend", de modo que convierta los bloques escritos
#con llaves por bloques multilinea con do y end.
#Ejem: reemplazar("3.times { asd }") --> "3.times do\n asdasdasd \nend"

def reemplazar str
	#gsub utiliza flag g 
	str.gsub(/{/, 'do\n').gsub(/}/, '\nend')
end

puts reemplazar "times { |i| puts i }"
