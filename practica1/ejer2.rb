##Que devuelve lo siguiente 

puts "TTPS Ruby".object_id == "TTPS Ruby".object_id

#Devuelve falso, debido a que aunque sean equivalentes los strings, no son
#identicos, por lo que su object_id es distinto. Si pasarìa eso con un hash
