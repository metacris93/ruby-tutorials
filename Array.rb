module MyEnumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end

  def my_select
    result = []
    self.my_each {|x| result << x if yield(x)}
    result
  end
end

include MyEnumerable

[1,2,3,4].my_each{|e| print e}

evens = [1,2,3,4].my_select{|e| e.even?}
p evens

letras = ['q','w','e','r','t','y']
letras.size
letras[2]
letras[-1] #y
letras[-2] #t
letras[100] #nil
letras.include? "q"

# funcion Lambda
letras.count {|x| x == "q"}

numbers = [1,2,3,4,5,6,7,8,9]
numbers.select {|x| x.odd?}
p numbers.sum

nombre = "Cristian Pisco Intriago"
p nombre.split(" ")
p nombre.split(" ").size
p nombre.split(' ').map {|x| x.upcase}
p letras.shuffle

p letras.last
x = 1..5 # incluye el 5
p x.to_a
y = (1...5).to_a # no incluye el 5
p y
p y.unshift(100)
p y.shift(1)
p y.uniq! # remueve los duplicados
p y.push(9)
p y.join # convierte el arreglo en string
p y.join('-') # convierte el arreglo en string
p %w(my name is Cristian Pisco, ruby is amazing)

for i in x
    print i
end
puts
x.each do |i|
    print i
end
puts
x.each { |i| print i }
z = (1..100).to_a.shuffle
puts
p z.select { |number| number.odd? }