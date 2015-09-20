# 13. Escribí un _script_ en Ruby que le pida al usuario su nombre y lo utilice para saludarlo imprimiendo en pantalla
#     `¡Hola, <nombre>!`. Por ejemplo:

#     ```bash
#     $ ruby script.rb
#     Por favor, ingresá tu nombre:
#     Matz
#     ¡Hola, Matz!
#     ```

puts "Por favor, ingresá tu nombre"
nom = gets
puts "¡Hola, #{nom.strip}!"