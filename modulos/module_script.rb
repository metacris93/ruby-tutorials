module MyModule
  def my_method text
    text.upcase
  end
end

class MyClass
  include MyModule

end

instance = MyClass.new
p instance.my_method 'Aprendiendo Ruby'
