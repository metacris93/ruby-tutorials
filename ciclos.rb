x=1
while x < 5 do
	p "hola #{x}"
	x+=1
end

x=1
loop do
	p "Hola #{x}"
	break if x >= 5
	x+=1
end

for i in 1..10 do
	p "Hola #{i}"
end

[1,2,3,4].each {|x| puts "hola #{x}"}

4.times {|x| puts "hola #{x}"}