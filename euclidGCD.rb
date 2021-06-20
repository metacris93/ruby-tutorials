def euclid_gcd(a, b)
  if b.zero?
    return a
  end
  d = a % b
  euclid_gcd(b, d)
end

puts euclid_gcd(357, 234)
