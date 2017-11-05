# 99 Bottles of Beer on the Wall
bottles = 99
while bottles > 1
  puts "#{bottles} bottles of beer on the wall,"
  puts "#{bottles} bottles of beer."
  bottles -= 1
  puts "Take one down, pass it around,"

  if bottles == 1
    puts "One bottle of beer on the wall."
  else
    puts "#{bottles} bottles of beer on the wall."
  end

  if bottles == 1
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer."
    puts "Take one down, pass it around,"
    puts "No more bottles of beer on the wall."
  end
end