countries = %w[Ecuador Peru Colombia]
countries.each do |pais|
  message = "#{pais} tiene #{pais.length} letras"
  puts message
end

def read_file file_name, &block
  puts 'Abrir archivo: ' + file_name
  block.call file_name if block_given?
  puts 'Cerrar archivo'
end

my_block = Proc.new do |file|
  puts 'Lectura del archivo ' + file.upcase
end

#read_file 'file.txt', &my_block
read_file 'file.txt'
