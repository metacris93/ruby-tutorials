class Car
	attr_accessor :color, :doors

	def initialize
		yield(self)
	end
end

def call_proc(my_proc)
  count = 500
  my_proc.call
end

count   = 1
my_proc = Proc.new { puts count }

p call_proc(my_proc) # What does this print?

car = Car.new do |c|
	c.color = "Red"
	c.doors = 4
end

p "My car's color is #{car.color} and it's got #{car.doors} doors."

class Fixnum
  def to_proc
    Proc.new do |obj, *args|
      puts "#{obj} #{args}"
      obj % self == 0
    end
  end
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select(&3)
puts numbers