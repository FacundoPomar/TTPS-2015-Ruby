# 11. Escribí una función llamada `rot13` que _encripte_ un `string` recibido como parámetro utilizando el algoritmo
#     [`ROT13`](https://es.wikipedia.org/wiki/ROT13). Por ejemplo:

#     ```ruby
#     rot13("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
#     # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"
#     ```

def rot13(aString)
    aString.tr("a-zA-Z", "n-za-mN-ZA-M")
end