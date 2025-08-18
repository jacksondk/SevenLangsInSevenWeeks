puts "Hello, world."

txt = "Hello, Ruby"
idx = txt.index("Ruby")
puts "Index is #{idx}"

puts "My name 10 times"
10.times { puts "Michael Jacobsen" }

puts "Counting 1 to 10"
1.upto(10) { |i| puts "This is sentence #{i}" }


rvalue = rand(100)
guessed = false
print "Guess a number between 0 and 100"
until guessed
  print "Give me a guess: "
  guess = gets.to_i
  if guess == rvalue
    puts "You guessed it!"
    guessed = true
  elsif guess < rvalue
    puts "Higher!"
  else
    puts "Lower!"
  end
end
