# Building and sorting an array
arr = []
puts "Type as many words as you like pressing enter in between each one."
while true
  input = gets.chomp
  arr.push input
  if input == ""
    break
  end
end
puts arr.sort
