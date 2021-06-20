class Person
  attr_accessor :name, :role

  def self.new(name, role)
    return nil if name.nil? || name.empty?
    super(name, role)
  end

  def initialize(name, role)
    @name = name
    @role = role
  end

  def admin?
    @role.permissions.length >= 5
  end
end
