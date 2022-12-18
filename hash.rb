capitales = {"Peru" => "Lima", "Chile" => "Santiago de Chile", "España" => "Madrid", "Argentina" => "Buenos aires", "Paises Bajos" => "Amsterdan", "Estados Unidos" => "Washington"}
p capitales["Peru"]
p capitales.size
p capitales.empty?
p capitales.has_value? "Washington"
p capitales.has_value? "Chile"
capitales["Colombia"] = "Bogota"

p capitales.invert["Bogota"]
capitales.merge({"Ecuador" => "Quito"})
p capitales.transform_values {|x| x.downcase}
p capitales.map{ |k,v| "La capital de #{k} es #{v}" }
p [["pepito", 13], ["sutanito",14]].to_h

hash = {a: 1, b: 2, c: 3, d: 4, e: "Hola"}
p hash
p hash[:a]
p hash.each { |key, value| p "THe key is #{key} and the value is #{value}" }
p hash.each { |k, v| hash.delete(k) if v.is_a?(String) }