# Old-school Roman numerals

def old_roman_numerals(num)
  thousands = num / 1000
  m = "M" * thousands
  num -= thousands * 1000
  five_hundreds = num / 500
  d = "D" * five_hundreds
  num -= five_hundreds * 500
  hundreds = num / 100
  c = "C" * hundreds
  num -= hundreds * 100
  fiftys = num / 50
  l = "L" * fiftys
  num -= fiftys * 50
  tens = num / 10
  x = "X" * tens
  num -= tens * 10
  fives = num / 5
  v = "V" * fives
  num -= fives * 5
  i = "I" * num
  puts "#{m}#{d}#{c}#{l}#{x}#{v}#{i}"
end
