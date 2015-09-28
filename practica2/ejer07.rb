# 7. Modificá el código anterior para, acorde a tu análisis, corregir los problemas que pueda tener.

#    > Nota: asumí que el juego debe terminar al momento que el primer jugador supera la posición 40 en el tablero.

def tirar_dado
     rand 1..6
   end

def mover_ficha(fichas, jugador, casilleros = tirar_dado)
     fichas[jugador] += casilleros
     if fichas[jugador] > 40
       puts "Ganó #{jugador}!!"
       true
     else
       puts "#{jugador} ahora está en el casillero #{fichas[jugador]}"
       false
     end
   end

   posiciones = { azul: 0, rojo: 0, verde: 0 }

   finalizado = false
   until finalizado
     [:azul, :rojo, :verde].shuffle.each do |jugador|
       finalizado = mover_ficha(posiciones, jugador)
     end
   end