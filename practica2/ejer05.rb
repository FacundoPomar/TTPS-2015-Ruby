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

def cuanto_falta?(aTime = nil)
	if aTime.nil?
		now = Time.now
		aTime = Time.new(now.year, now.month, now.day, 23, 59, 59)
	end
	(aTime.to_i - Time.now.to_i) / 60
end