# Leap years
puts "Please input a start year."
start_year = gets.chomp!.to_i
puts "Please input an end year."
end_year = gets.chomp!.to_i
year = start_year
puts "These are all the leap years in between:"
while year <= end_year
  if year % 4 == 0
    puts year
  elsif year % 400 == 0
    puts year
  end
  year += 1
end
