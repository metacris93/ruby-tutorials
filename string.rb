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
sentence = "Welcome to the jungle"
p sentence.sub("the jungle", "utopia")
p sentence.instance_of?(String)
p sentence.instance_of?(Numeric)
p sentence.instance_of?(Object)