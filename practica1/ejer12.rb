# 12. Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como parámetro un `string` y un
#     número `n`, y que realice una _rotación_ de `n` lugares de las letras del `string` y retorne el resultado. Por
#     ejemplo:

#     ```ruby
#     rot("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!", 13)
#     # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"
#     ```

#Medio inconsistente, rot de 0 y 26 da lo mismo. 27 error.

def rot(aString, aRotNumber)
	dif = 27 - (aRotNumber +1)
	alpha = ("a".."z").last(dif).join("")
	alpha += ("a".."z").first(aRotNumber).join("")
	aString.tr("a-zA-Z", alpha + alpha.upcase)
end