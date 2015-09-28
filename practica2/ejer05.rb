# 5. Implementá el método `cuanto_falta?` que opcionalmente reciba como parámetro un objeto `Time` y que calcule la
#    cantidad de minutos que faltan para ese momento. Si el parámetro de fecha no es provisto, asumí que la consulta es
#    para la medianoche de hoy.

#    Por ejemplo:

#    ```ruby
#    cuanto_falta? Time.new(2015, 12, 31, 23, 59, 59)
#    # Debe retornar la cantidad de minutos que faltan para las 23:59:59 del 31/12/2015
#    cuanto_falta?
#    # Debe retornar la cantidad de minutos que faltan para la medianoche de hoy
#    ```

def cuanto_falta?(aTime = Time.new(Time.now.year, Time.now.month, Time.now.day, 23, 59, 59))
	(aTime.to_i - Time.now.to_i) / 60.0
end

puts cuanto_falta?
puts (cuanto_falta? Time.new(2015, 9, 29, 23, 59, 59)) / 60