# Recursive dictionary sort
unsorted_array = []
puts "Type as many words as you like pressing enter in between each one."
while true
  input = gets.chomp
  unsorted_array.push input
  if input == ""
    break
  end
end

def sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.length <= 0
    return sorted_array
  end
  first_word = unsorted_array.pop
  still_unsorted_array = []

  unsorted_array.each do |each_word|
    if first_word.downcase > each_word.downcase
      still_unsorted_array << first_word
      first_word = each_word
    else
      still_unsorted_array << each_word
    end
  end
  sorted_array << first_word

  recursive_sort(still_unsorted_array, sorted_array)
end

puts sort(unsorted_array)
