# 8. Modelá con una jerarquía de clases algo sencillo que represente la siguiente situación:
#    * Tres tipos de vehículo: `Auto`, `Moto` y `Lancha`
#    * Los tres tipos arrancan usando una llave.
#    * El auto, adicionalmente, requiere que no esté puesto el freno de mano y que el cambio esté en punto muerto. La
#      moto, por otra parte, requiere una patada (sin la llave). La lancha arranca con la llave y listo.
#    * El arranque de los tres vehículos se prueba en un taller. La especificación de `Taller` es la siguiente:

#      ```ruby
#      class Taller
#        def probar(objeto)
#          objeto.arrancar
#        end
#      end
#      ```

#      Suponé que, posteriormente, el taller necesita probar una motosierra. ¿Podrías hacerlo? ¿Cómo? ¿Qué concepto
#      del lenguaje estás usando para poder realizar esto?

#Arrancar setea todo lo necesario para poder arrancar.

class Vehiculo
  attr_accessor(:llave)

  def initialize(llave = false)
    self.llave = llave
  end

  def pre_arrancar
    true
  end

  def arrancar
    pre_arrancar
  end
end

class Auto < Vehiculo
  attr_accessor(:freno_de_mano, :cambio)

  def initialize(llave = false, freno_de_mano = false, cambio = 0)
    super llave
    self.freno_de_mano = freno_de_mano
    self.cambio = cambio
  end

  def arrancar
    super && !freno_de_mano && cambio.zero?
  end
end

class Moto < Vehiculo
  #agregar patada como frno de mano
  def arrancar
    !super
  end
end

class Lancha < Vehiculo

end