# 16. Escribí una función que encuentre la suma de todos los números naturales múltiplos de `3` ó `5` menores que un
#     número `tope` que reciba como parámetro.

def suma_multiplos(tope)
	(0..tope).select {|val| (val%3 == 0) or (val%5 == 0)}.inject(0) {|sum, elem| sum + elem}	
end