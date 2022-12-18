class GuessNumber
    attr_reader :number
    attr_reader :from
    attr_reader :to

    def initialize(from = 1, to = 100)
        @from = from
        @to = to
    end

    def set_random_number()
        @number = rand @from..@to
    end

    def is_guessed(number_entered)
        if number_entered > number
            puts("Oops. Your guess was HIGH")
            return false
        elsif number_entered < number
            puts("Oops. Your guess was LOW")
            return false
        else
            return true
        end
    end
end

class App
    attr_reader :tries
    attr_reader :client_name
    attr_reader :counter

    def initialize(tries = 10)
        @tries = tries
        print("Enter your name: ")
        @client_name = gets.chomp
        puts("Welcome #{@client_name}")
        @counter = 0
    end

    def run
        rnd = GuessNumber.new
        rnd.set_random_number
        is_guesssed = false

        until @counter >= @tries || is_guesssed
            print("Make a guess: ")
            guess_number = gets.chomp.to_i
            is_guesssed = rnd.is_guessed(guess_number)
            if (is_guesssed)
                puts("YIKES...")
            else
                @counter+=1
                puts("You've got #{@counter} guesses left")
            end
            if (@counter >= @tries)
                puts("Sorry... You didn't get my number. (It was #{rnd.number})")
            end
        end
    end
    
    def reset
        @counter = 0
    end
end

app = App.new
app.run()
