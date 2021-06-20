def block_method
	p "We are in method"
end

def my_method
	p "we are in method"
	yield if block_given?
	p "we are back in the method"
end

def my_method_2(arr)

	if block_given?
		arr.each { |x| yield("The number is",x) }
		#yield("John", 2)
	end
end

#block_method {p "The block is called"}
#my_method {p "The block is called"}

my_method_2([1,2,3,4]) { |label, age| puts "#{label} #{age}" }
