def return_from_lambda
  my_lambda = lambda{return 'Hey there lambda!!'}
  result = my_lambda.call
  "Result lambda is: #{result}"
end

def return_from_proc
  my_proc = proc {return 'Hey there proc!!'}
  result = my_proc.call
  "Result proc is: #{result}"
end

# puts return_from_lambda
# puts return_from_proc

my_lambda = lambda { |a, b| [a, b] }

puts "(1, 2):    #{my_lambda.call(1, 2)}"
puts "(1, 2, 3): #{my_lambda.call(1, 2, 3)}"
puts "(1):       #{my_lambda.call(1)}"

my_proc = proc { |a, b| [a, b] }

puts "(1, 2):    #{my_proc.call(1, 2)}"
puts "(1, 2, 3): #{my_proc.call(1, 2, 3)}"
puts "(1):       #{my_proc.call(1)}"

class MyMap
  def call(items, &block)
    items.map(&block)
  end
end

increment = ->(element) { element + 1 }
my_map = MyMap.new
my_map.call([1, 2, 3], &increment)