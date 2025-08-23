require 'pp'

h = { :a => "value", :b => "bvalue" }

h.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

valuelist = h.map do |key, value|
  value
end
pp valuelist

keylist = h.map do |key, value|
  key
end
pp keylist

kvlist = h.map do |key, value|
  [key, value]
end
pp kvlist