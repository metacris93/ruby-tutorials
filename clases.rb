# class → para declarar una clase.
# def → es para definir los métodos.
# initialize → es un método especial en Ruby para programación orientada a objeto que hace del constructor. Aquí se define si recibe o no recibe parámetros.
# @variable → Para declarar variables de instancia se utiliza el arroba
# self → esta hace referencia a la misma instancia, para que está forma podamos encadenar varios llamados.

class MyClass
  
  attr_accessor :name, :age #crea los metodos getter y setter para acceder a las variables de instancias
  attr_writer :name #para asignar valores
  attr_reader :age #para leer valores

  def initialize(name, age)
    @name = name
    @age = age
  end
end

instance = MyClass.new('Cristian', 27)
puts instance.age
instance.age = 28
puts instance.age