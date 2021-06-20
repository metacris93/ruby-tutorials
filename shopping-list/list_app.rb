require './list.rb'
require './item.rb'
# ListApp class
class ListApp
  attr_accessor :list

  def initialize
    @list = List.new
  end

  def print_menu
    puts
    puts 'a - Agregar un articulo'
    puts 'r - Remover un articulo'
    puts 'v - Mostrar todos los articulos'
    puts 'm - Marcar un articulo'
    puts 'b - Borrar todos los articulos'
    puts 's - Salir de la aplicacion'
  end

  def action(input)
    case input
    when 'a'
      puts 'Ingresa el articulo:'
      item = gets.chomp
      @list.add_item(Item.new(item))
      20.times { print '-' }
      puts "\n#{item} se ha agregado a la lista"
      20.times { print '-' }
    when 'r'
      puts '# de articulo que deseas remover'
      index = gets.chomp
      item = @list.remove_item(index.to_i)
      20.times { print '-' }
      puts "\n#{item.text} ha sido removido"
      20.times { print '-' }
    when 'v'
      @list.show_all
    when 'm'
      puts '# de articulo que deseas marcar'
      index = gets.chomp
      @list.check_item(index.to_i)
    when 'b'
      puts 'Deseas remover todos los articulos ? s/n'
      item = gets.chomps
      if item == 's'
        @list.remove_all
      else
        puts 'Operacion cancelada'
      end
    when 's' then false
    else
      puts 'Operacion no reconocida'
    end
  end

  def run
    puts 'Bienvenido a nuestra lista de compras'
    loop do
      print_menu
      input = gets.chomp
      response = action(input)
      break if response == false
    end
    puts 'gracias por utilizar nuestra aplicacion'
  end
end

list_app = ListApp.new
list_app.run
