class Persona
  attr_accessor :name, :age, :last_name
  def initialize name, last_name, age
    @name, @last_name, @age = name, last_name, age
  end

  def talk message
    puts "#{@name}: #{message}"
  end

  def self.description
    'descripcion de la persona'
  end
end

me = Persona.new('Cristian', 'Pisco', 24)
puts me.inspect
puts me.talk 'hola desde Ruby'
puts Persona.description

#Persona.from(name: 'Cristian', age: 24)