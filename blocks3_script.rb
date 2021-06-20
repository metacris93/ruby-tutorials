full_name = Proc.new do |first:'Apt', last:'Get Install', **list|
  puts "#{first} , #{last} : #{list}"
end

full_name.call(first: 'Cristian', last: 'Pisco', birth: 1993, male: true)