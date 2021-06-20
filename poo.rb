class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end

	def self.suggested_names
		["Jose", "Juan", "Gabriel"]
	end

	#def name=(name) #Setter
    # @name = name
    # self
    #end
end

class Persona < Struct.new(:name, :age)
	def self.suggested_names
		["Jose", "Juan", "Gabriel"]
	end
end

p "Class Person"
person = Person.new("Cristian", 27)
p "#{person.name} #{person.age}"

p "Class Persona"
persona = Person.new("Cristian", 27)
p "#{persona.name} #{persona.age}"

p persona.inspect