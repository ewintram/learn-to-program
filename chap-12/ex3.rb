# Roman numerals to integers
def roman_to_integer(numeral)
  integers = { "I" => 1,
               "V" => 5,
               "X" => 10,
               "L" => 50,
               "C" => 100,
               "D" => 500,
               "M" => 1000 }
  total = 0
  prev = 0
  index = numeral.length - 1
  while index >= 0
    c = numeral[index].upcase
    index = index - 1
    val = integers[c]
    if !val
      puts "Not valid"
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total
end
puts(roman_to_integer('mcmxcix'))
