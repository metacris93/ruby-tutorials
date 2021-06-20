class Calculator
	def sum(a,b)
		a+b
	end
	def substract(a,b)
		a-b
	end
end
c = Calculator.new
tests_sum = {
	[1,2] => 3,
	[5,6] => 11,
	[0,0] => 0
}
tests_sum.each do |input, expect_result|
	if c.sum(input[0], input[1]) != expect_result
		raise "Test failed for input #{input[0]}, #{input[1]}"
	else
		puts "Test result with inputs #{input[0]}, #{input[1]} - OK"
	end
end