#!/usr/bin/env ruby
require 'optparse'
options = {}
OptionParser.new do |op|
  op.on("-e", "--email EMAIL", "Your email address") do |value|
 	options[:email] = value
  end
end.parse!
if options[:email]
    puts 'hello ' + options[:email]
 else
   puts 'hello stranger'
 end
