#1. Imprimilo con sus caracteres en orden inverso.

puts "soy un String".reverse

#2. Eliminá los espacios en blanco que contenga.

"     soy     un    string    ".gsub(/\s+/, "")

#3. Convertí cada uno de sus caracteres por su correspondiente valor ASCII.

"soy un string".each_byte do | char |
	puts char
end

#4. Cambiá las vocales por números ( a por 4 , e por 3 , i por 1 , o por 0 , u por
#6 ).