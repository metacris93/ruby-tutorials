def fizz_buzz(numero)
  if numero%3 == 0
    return 'fizz'
  elsif numero%5 == 0
    return 'buzz'
  else
    return nil
  end
end