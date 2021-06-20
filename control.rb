valor = 5

if valor == 2
  puts 'los valores son iguales'
elsif valor > 4
  puts 'valor mayor a 4'
end
#el unless es como el if, si la expresion es falsa, entra al cuerpo de la estructura
unless valor >= 2
  puts 'Es menor a 2'
end

paises = %w[Espania Ecuador Peru]

paises.each do |pais|
  puts pais
end
