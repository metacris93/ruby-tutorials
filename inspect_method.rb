require "pp"
class Cat
    attr_accessor :color
    def initialize(color)
        @color = color
    end
    def to_s
        "I'm a #{color} cat"
    end
end

cat = Cat.new("blue")
pp cat.inspect
pp cat.to_s