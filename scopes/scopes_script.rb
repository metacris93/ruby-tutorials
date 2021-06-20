# definir metodos en ruby de forma dinamica
development_environment = true

def log(message)
  puts "Desarrollo: #{message}"
end

unless development_environment
  def log(message)
    puts "Produccion: #{message}"
  end
end

log('Soy un programador')

GRAVITY = false
HUMANITY = true

if HUMANITY
  class Person

    unless GRAVITY
      def float
        puts "Estoy flotando!!"
      end
    end
  end
end

Person.new.float

# 'function_name'.to_sym
define_method(:new_method) do |text: 'default'|
  puts 'Un metodo nuevo'
  puts "#{text}"
end

new_method(text:'Hola')