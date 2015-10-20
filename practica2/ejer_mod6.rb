# Modificá la implementación del ejercicio anterior para que GenericFactory sea un módulo que se
# incluya como Mixin en las subclases que implementaste. ¿Qué modificaciones tuviste que hacer en
# tus clases? Nop, solo en el modulo.

module GenericFactory

	module ClassMethods
		def create(**args)
			new(**args)
		end
	end

	def initialize(**args)
		raise NotImplementedError
	end

	def self.included(base)
		# base is our target class. Invoke `extend` on it and pass nested module with class methods.
		base.extend ClassMethods
	end
end

class Persona
	attr_accessor(:nombre)
	include GenericFactory

	def initialize(**args)
		@nombre = args[:nombre]
	end
end

p Persona.create({nombre: "Pedro GOnzalez"})
