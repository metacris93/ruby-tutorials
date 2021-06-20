users = %w[Luis Paco Carlos]

def active_user(users)
  yield(users.last.downcase) if block_given?
  users.last
end

#puts active_user(users)
active_user(users) do |user|
  puts "El usuario activo es: #{user}"
end