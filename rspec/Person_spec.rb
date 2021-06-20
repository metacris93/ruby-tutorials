require './Person'
require './Role'
RSpec.describe Person do
  before do
    @role = Role.new(:posts, :services)
    @admin_role = Role.new(:users, :emails, :posts, :services, :products)
  end

  describe '#new' do
    # a describir el metodo new de la clase Person
    it 'be normal' do
      person = Person.new('Cristian', @role)
      expect(person).to be
    end
    it 'return nil if name is empty' do
      person = Person.new('', @role)
      expect(person).to be_nil
    end
    it 'return nil if name is nil' do
      person = Person.new(nil, @role)
      expect(person).to be_nil
    end
  end
  describe '#admin?' do
    it 'return true for 5 or more permissions' do
      admin = Person.new('Cristian', @admin_role)
      expect(admin.admin?).to be(true)
    end
  end
end
