module Pet
  def be_nice
    puts 'Prrr'
  end
end
class Cat
  include Pet
end

mi_cat = Cat.new
mi_cat.be_nice

p Cat.include? Pet
p Cat.ancestors
p Cat.included_modules
p Cat.superclass