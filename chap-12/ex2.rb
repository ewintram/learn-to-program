# How old are you?
puts "What year were you born in?"
year = gets.chomp.to_i
puts "What number month were you born in (e.g. Jan = 1)?"
month = gets.chomp.to_i
puts "What day were you born on?"
day = gets.chomp.to_i
birth_date = Time.mktime(year, month, day)
today = Time.new

age = (today - birth_date)/(365*24*60*60)
puts age.to_i


