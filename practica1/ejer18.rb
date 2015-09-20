# 18. Un número _palíndromo_ se lee igual al derecho y al revés. El número palíndromo más grande obtenido de la
#     multiplicación de dos números de 2 dígitos es `9009` (`91 * 99 = 9009`). Encontrá el palíndromo más grande obtenido a
#     través de la multiplicación de dos números de 3 dígitos.

#Muy flojo la obtención de la multiplicación de los números

result = []
(100..999).each do |i|
	(i..999).each do |j|
		result << i*j
	end
end

result.select{|val| val.to_s == val.to_s.reverse}.last()