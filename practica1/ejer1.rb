# Crear los siguientes tipos con y sin new.
## Array
puts "ARRAYS"
arr_with_new = Array.new
arr_with_new[0] = "uno"
puts arr_with_new

arr_inline = ["uno", "dos", "tres"]
puts arr_inline

##Hash / Diccionario
puts "HASH"
dic1 = Hash.new
dic1["tu"] = "vieja"
puts dic1 

dic2 = { "tu" => "vieja inline" }
puts dic2

##STRING
puts "STRING"

str1 = String.new "ala"
puts str1


str2 =  "otro string"

puts str2


##Symbol
puts "Symbol"

sym1 = Symbol.new "lala"

puts sym1


