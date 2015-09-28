# 6. Analizá el siguiente código e indicá qué problema(s) puede tener.

#    ```ruby
#    # Tira un dado virtual de 6 caras
#    def tirar_dado
#      rand 1..6
#    end

#    # Mueve la ficha de un jugador tantos casilleros como indique el dado en un tablero virtual de 40 posiciones.
#    # Si no se recibe la cantidad de casilleros, aprovecho el valor por defecto para ese parámetro para evitar tener que
#    # llamar a #tirar_dado dentro del cuerpo del método.
#    def mover_ficha(fichas, jugador, casilleros = tirar_dado)
#      fichas[jugador] += casilleros
#      if fichas[jugador] > 40
#        puts "Ganó #{jugador}!!"
#        true
#      else
#        puts "#{jugador} ahora está en el casillero #{fichas[jugador]}"
#        fichas[jugador]
#      end
#    end

#    posiciones = { azul: 0, rojo: 0, verde: 0 }

#    finalizado = false
#    until finalizado
#      ['azul', 'rojo', 'verde'].shuffle.each do |jugador|
#        finalizado = mover_ficha(posiciones, jugador)
#      end
#    end
#    ```


#Comenrarios:
#Para empezar, el hash de posiciones, está definido con claves symbol, mientras que el
#array de jugadores está definido con strings. Por lo cual, no es lo mismo
# arra['azul'] que arra[:azul] por lo que siempre devuelve nil.
# Además, mover_ficha en el caso de ganar devuelve true y en caso de seguir jugando, devuelve
#la cantidad de fichas del jugador actual, que siempre es +0 y por ende, true. Debería de devolver false
# y preguntar por until finalizado
