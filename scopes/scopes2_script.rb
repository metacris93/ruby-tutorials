class MyClass
  def initialize(value)
    @value = value
  end
end

my_instance = MyClass.new(20)

my_instance.instance_eval { puts @value }
my_instance.instance_exec('Sumando', 5) do |text, number|
  puts "#{text}: #{number+@value}"
end