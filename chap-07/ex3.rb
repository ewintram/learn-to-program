# Deaf grandma extended
three_byes = 0
while true
  input = gets.chomp!
  if input == "BYE"
    three_byes += 1
  end
  if three_byes == 3
    break
  end
  if input == input.downcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{rand(1930..1951)}!"
  end
end
