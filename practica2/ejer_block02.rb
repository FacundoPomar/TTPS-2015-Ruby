# Implementá un método que reciba como parámetros un Hash y Proc , y que devuelva un nuevo
# Hash cuyas las claves sean los valores del Hash recibido como parámetro, y cuyos valores sean
# el resultado de invocar el Proc con cada clave del Hash original.
# Por ejemplo:
# hash = { 'clave' => 1, :otra_clave => 'valor' }
# procesar_hash(hash, ->(x) { x.to_s.upcase })
# # => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }

def procesar_hash(aHash = {}, aProc = Proc.new {})
	response = {}
	aHash.keys.each {|key| response[aHash[key]] = aProc.call(key) }
	response
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
puts procesar_hash(hash, ->(x) { x.to_s.upcase })
