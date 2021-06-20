# require './item.rb'
# List class
class List
  attr_accessor :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def remove_item(index)
    @items.delete_at(index)
  end

  def check_item(index)
    @items[index].checked = true
    @items[index]
  end

  def remove_all
    @items.clear
  end

  def show_all
    if @items.length.zero?
      puts 'No hay articulos en tu lista de compras'
    else
      @items.each_index do |index|
        puts index.to_s + ' -' + @items[index].to_s
      end
    end
  end
end
