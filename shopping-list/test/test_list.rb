require './spec_helper'

RSpec.describe List do
  before do
    @list = List.new
  end
  describe '#new' do
    it 'the items must be empty' do
      expect(@list.items).to be_empty
    end
  end

  describe '#add_item' do
    it 'verify if the item was added' do
      @list.add_item(Item.new('Pan'))
      expect(@list.items).not_to be_empty
    end
  end

  describe '#remove_item' do
    it 'verify if the item was deleted' do
      @list.add_item(Item.new('Pan'))
      @list.remove_item(0)
      expect(@list.items).to be_empty
    end
  end

  describe '#check_item' do
    it 'verify if the item checked attribute is true' do
      @list.add_item(Item.new('Pan'))
      @list.check_item(0)
      expect(@list.items[0].checked).to eq(true)
    end
  end

  describe '#remove_all' do
    it 'verify if the item list is clear' do
      @list.add_item(Item.new('Pan'))
      @list.add_item(Item.new('Queso'))
      @list.add_item(Item.new('Huevo'))
      @list.add_item(Item.new('Leche'))
      @list.remove_all
      expect(@list.items).to be_empty
    end
  end
end
