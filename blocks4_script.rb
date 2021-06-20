block_proc = proc do |a, b|
  [a, b]
end

block_lambda = lambda do |a, b|
  [a, b]
end

p block_proc.call('A', true, 2)
p block_proc.call('A')
p block_proc.call(['A', true])

p block_lambda.call('A', true, 2)
p block_lambda.call('A')
p block_lambda.call(['A', true])