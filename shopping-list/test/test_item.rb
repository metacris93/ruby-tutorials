require './spec_helper'

RSpec.describe Item do
  describe '#new' do
    # a describir el metodo new de la clase PItem
    it 'be normal' do
      item = Item.new('Queso')
      expect(item).to be
    end
    it 'text is \""\ if the argument is nil' do
      item = Item.new(nil)
      expect(item.text).to be
    end
  end

  describe '#to_s' do
    it 'checked must be false' do
      item = Item.new('Queso')
      expect(item.to_s).to eq('  ' + item.text)
    end
  end
end
