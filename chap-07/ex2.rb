# Deaf grandma
while true
  input = gets.chomp!
  if input == "BYE"
    break
  end
  if input == input.downcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{rand(1930..1951)}!"
  end
end
