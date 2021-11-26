def IsInRange(a, b)
    rnd = rand 1..100
    puts "Numero: #{rnd}"
    return rnd >= a && rnd <= b 
end

puts "Enter two numbers to know it is in the range: "
STDOUT.flush
arr = gets.chomp.split(/\s+/)
a = arr[0].to_i
b = arr[1].to_i
print "Esta dentro del rango -> #{IsInRange a,b}"
