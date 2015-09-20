# 17. Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos anteriores. Los primeros 10
#     términos son: `1`, `1`, `2`, `3`, `5`, `8`, `13`, `21`, `34`, `55`. Considerando los términos en la secuencia de
#     Fibonacci cuyos valores no exceden los 4 millones, encontrá la suma de los términos pares.

fibonacci = Enumerator.new do |caller|
    i1, i2 = 1, 1
    loop do
        caller.yield i1
        i1, i2 = i2, i1+i2
    end
end

fibonacci.first(10000).select{|num| num%2 == 0}.inject(0){|sum, num| sum + num}