# Birthday helper!

require "csv"

@people = []

@months = { "Jan" => 1,
           "Feb" => 2,
           "Mar" => 3,
           "Apr" => 4,
           "May" => 5,
           "Jun" => 6,
           "Jul" => 7,
           "Aug" => 8,
           "Sep" => 9,
           "Oct" => 10,
           "Nov" => 11,
           "Dec" => 12 }

def load_birthdates(filename = "birthdates.csv")
  CSV.foreach(filename) do |line|
    @name, month, date, year = line[0], line[1], line[2], line[3]
    @people << {name: @name, month: month, date: date, year: year}
  end
end

def print_names
  @people.each do |person|
    puts "#{person[:name]}"
  end
end

def print_birthday
  puts "Whose birthday do you want to know?"
  name = gets.chomp
  @people.each do |person|
    if person[:name] == name
      puts "#{name}'s birthday is on #{person[:month]} #{person[:date]}"
      today = Time.new
      birth_month = person[:month]
      month = @months[birth_month]
      birth_date = Time.mktime(person[:year], month, person[:date])
      age = (today - birth_date)/(365.25*24*60*60)
      puts "They will be #{age.to_i + 1} years old"
    end
  end
end

load_birthdates

puts "People's birthdays:"
print_names

print_birthday
