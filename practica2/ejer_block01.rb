# Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de retorno del
# bloque fue nil . Por ejemplo:
# da_nil? { }
# # => true
# da_nil? do
#  'Algo distinto de nil'
# end
# # => false

def da_nil?
	if block_given?
		puts yield.nil?
	end
end

da_nil? {}
