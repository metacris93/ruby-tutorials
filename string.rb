require "pp"

nombre = "cristian"
saludo = "Hola #{nombre}"

saludo = %Q(Hola #{nombre})

nombre.empty?
nombre.gsub("cristian","Cristian Pisco")

nombre += " Intriago"
# nombre -> "Cristian Pisco Intriago"
nombre.gsub!("Cristian", "cristian")
pp "hello".sub(/(?<foo>[aeiou])/, '*\k<foo>*')
pp "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')
#cuando utilizo ! el metodo va a modificar el valor de esa variable
#la variable nombre cambia, su valor es: cristian Pisco Intriago -> sin necesidad de una asignación