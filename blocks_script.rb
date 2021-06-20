#10.times do |number|
#  puts 'el numero es: ' + number
#end

#10.times {|number| puts 'el numero es: ' + number}

#print_number = Proc.new do |number|
#  puts "El numero actual es: #{number}"
#end
#10.times &print_number

#print_number = lambda {|number| puts 'el numero es: ' + number}
#10.times &print_number

full_name = Proc.new do |first:name, last:last_name|
  puts "#{first}, #{last}"
end
#full_name.call(first:'Cristian', last:'Pisco')

def load_users(database, &block)
  puts database
  puts block.class
  puts block.source_location
  puts block.parameters
  block.call(first:'Cristian', last:'Pisco')
end
load_users('users.sqlite', &full_name)