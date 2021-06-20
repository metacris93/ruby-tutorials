require 'pry'
def tip(amount)
  percent = 0.5
  percent = 0.1 if amount > 100
  binding.pry
  amount * percent
end

puts tip 50
