# Extendé las clases TrueClass y FalseClass para que ambas respondan al método de
# instancia opposite , el cual en cada caso debe retornar el valor opuesto al que recibe la
# invocación al método. Por ejemplo:
#
# false.opposite
# # => true
# true.opposite
# # => false
# true.opposite.opposite
# # => true

module Opposite
	def opposite
		!self
	end
end

class FalseClass
	include Opposite
end

class TrueClass
	include Opposite
end

puts false
puts true.opposite
