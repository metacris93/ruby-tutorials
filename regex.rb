is_gmail_regex = /\w+@gmail.com/
p "simon@gmail.com".match is_gmail_regex

number_regex = /\d+/
p "234567".match number_regex
p "qwerty".match number_regex