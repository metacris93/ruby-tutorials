# en los modulos no se pueden crear instancias
# se pueden crear metodos de instancia desde un modulo externo
module Comunication
  CONSTANTE = 'V1.0.0'
  def talk
    puts 'Mensaje'
  end
  #module Input
  #end
  #class Message
  #end
end

class Women
  include Comunication
end

her = Women.new
her.talk
puts Women::CONSTANTE


