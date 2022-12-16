class RandomNumber
    FROM = 1
    TO = 100
    def get_random_number()
        rand FROM..TO
    end
end
print("Enter your name: ")
name = gets.chomp
puts("Welcome #{name}")
rnd = RandomNumber.new
number = rnd.get_random_number
is_guesssed = false
TRIES = 10
counter = 0
while (!is_guesssed && counter < TRIES)
    print("Guess the number: ")
    guess_number = gets.chomp.to_i
    if guess_number > number
        puts("Oops. Your guess was HIGH")
        is_guesssed = false
        counter+=1
        puts("You have #{counter} tries")
    elsif guess_number < number
        puts("Oops. Your guess was LOW")
        is_guesssed = false
        counter+=1
        puts("You have #{counter} tries")
    else
        puts("YIKES...")
        is_guesssed = true
    end
end

if (counter >= TRIES)
    puts("Sorry... Try again")
end
