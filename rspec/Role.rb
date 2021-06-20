class Role
  attr_accessor :permissions

  def initialize(*permissions)
    @permissions = permissions
  end

end