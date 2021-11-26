#!/usr/bin/env ruby
require 'io/console'
def mygets()
    char = ''
    name = ''
    while 1 do
        char = STDIN.getch
        print char
        case char.ord
        when 27
            return name
        when 13
            name = name + "\n"
            print "\n"
        else
            name = name + char
        end
    end
end

file_name = "file.txt"
if !File.readable?(file_name)
    puts "No se puede leer el archivo #{file_name}"
    return
end
puts "el archivo pesa #{File.size(file_name)} bytes"
puts "Archivo vacio" if File.zero?(file_name)
puts "extension: " + File.extname("users.txt")
puts Dir.pwd
file = File.open("file.txt") # you'll get a File object, but not the contents of the file yet
=begin
r ->  Read only access. Pointer is positioned at start of file.
r+ -> Read and write access. Pointer is positioned at start of file.
w ->  Write only access. Pointer is positioned at start of file.
w+ -> Read and write access. Pointer is positioned at start of file.
a ->  Write only access. Pointer is positioned at end of file.
a+ -> Read and write access. Pointer is positioned at end of file.
b ->  Binary File Mode. Used in conjunction with the above modes. Windows/DOS only.
=end

file.each { |line| print line }

file.close

file_write = File.new("write.txt", "w+")    # open file for read and write
file_write.puts("This test line 1")         # write a line
file_write.puts("This test line 2")         # write a second line
file_write.rewind                           # move pointer back to start of file
file_write.puts("This test line 3")         # write a line
file_write.puts("This test line 4")         # write a second line
file_write.puts("This test line 5")         # write a line
file_write.puts("This test line 6")         # write a second line
file_write.close

a = mygets()
puts "\n ingresaste:\n"
puts a
