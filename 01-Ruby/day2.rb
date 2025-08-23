f = File.new('Notes.md','r')

lines = f.readlines()
f.close()

lines.each do |line|
  puts line
end

puts 'Testing'

# Using block to automatically close file after use
# Like using(var file = new File("Notes.md")) in C#
File.open('Notes.md','r') do |f|
  lines = f.readlines()
  puts "Got #{lines.length} lines in File.open block"
end

