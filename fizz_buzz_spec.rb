require 'minitest/autorun'
require './fizz_buzz'
# esto es BDD
describe 'La funcion fizz_buzz' do
  it 'regresar fizz si es multiplo de 3' do
    fizz_buzz(3).must_equal 'fizz'
  end
  it 'regresar buzz si es multiplo de 5' do
    fizz_buzz(5).must_equal 'buzz'
  end
end