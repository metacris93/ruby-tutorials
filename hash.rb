capitales = {“Peru” => “Lima”, “Chile” => “Santiago de Chile”, “España” => “Madrid”, “Argentina” => “Buenos aires”, “Paises Bajos” => “Amsterdan”, “Estados Unidos” => “Washington”}
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
