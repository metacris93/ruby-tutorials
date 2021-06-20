puts "Enter two numbers followed of a space:"
STDOUT.flush
acum = 0
arr = gets.chomp.split(/\s+/)

arr.each {|value| acum = acum + value.to_i}
print acum
