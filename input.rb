def is_number? string
    true if Float(string) rescue false
end
p "What is your name?"
first_name = gets.chomp
p "thank you, you said your first name is #{first_name}"
p "Enter a number to multiply by 2"
input = gets.chomp
if (is_number?(input))
    p "El resultado es #{input.to_i * 2}"
else
    p "No es numerico"
end
