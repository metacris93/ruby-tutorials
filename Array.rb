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

#funcion Lambda
letras.count {|x| x == "q"}

numbers = [1,2,3,4,5,6,7,8,9]
numbers.select {|x| x.odd?}
p numbers.sum

nombre = "Cristian Pisco Intriago"
p nombre.split(" ")
p nombre.split(" ").size
p nombre.split(" ").map {|x| x.upcase}