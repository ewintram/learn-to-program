# 99 Bottles of Beer on the Wall
bottles = 99
while bottles > 2
  puts "#{bottles.to_s} bottles of beer on the wall,"
  puts "#{bottles.to_s} bottles of beer."
  puts "Take one down, pass it around,"
  puts "#{(bottles -= 1).to_s} bottles of beer on the wall."
end
  puts "2 bottles of beer on the wall,"
  puts "2 bottles of beer."
  puts "Take one down, pass it around,"
  puts "One bottle of beer on the wall."
  puts "One bottle of beer on the wall,"
  puts "One bottle of beer,"
  puts "Take one down, pass it around,"
  puts "No more bottled of beer on the wall."
