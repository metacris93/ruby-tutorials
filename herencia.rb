class Persona
  attr_accessor :name, :last_name, :age
  def initialize name
    @name = name
  end
  def talk message
    puts "#{@name}: #{message}"
  end
  def self.description
    'Descripcion de la clase padre'
  end
end

class Men < Persona
  # es comun escribir solo super sin pasar argumentos porque ruby pasa por default esos argumentos
  def self.talk message
    super
    puts "#{@name}: #{message} que es un hombre"
  end
  def self.description
    puts super
    'Clase Men para representar a un hombre'
  end
end

me = Men.new 'Cristian', 'Pisco', 24
puts me.class.superclass
puts Men.description