module Arranque
    def pre_arrancar
        raise NotImplementedError
    end

    def arrancar
        pre_arrancar
    end
end

class Vehiculo
    attr_accessor(:llave)
    include Arranque

    def pre_arrancar
        llave = true
    end

    def initialize(llave = false)
        self.llave = llave
    end

end

class Auto < Vehiculo
    attr_accessor(:freno_de_mano, :cambio)

    def initialize(llave = false, freno_de_mano = false, cambio = 0)
        super llave
        self.freno_de_mano = freno_de_mano
        self.cambio = cambio
    end

    def pre_arrancar
        super pre_arrancar
        freno_de_mano = false
        cambio = 0
        true
    end

end

class Moto < Vehiculo
    #agregar patada como frno de mano
    def pre_arrancar
        llave = false
    end
end

class Lancha < Vehiculo

end