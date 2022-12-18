2.times { p rand(10) }
p rand
p "hello".to_i
p "10".to_f
p "Enter a number:"
num = gets.chomp.to_i
p num.odd?
p num.even?
p num == "5"
p num === "5"