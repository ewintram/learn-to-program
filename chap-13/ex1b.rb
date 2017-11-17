# “Modern” Roman numerals
class Integer

  def to_roman
    num = self
    thousands = num / 1000
    numeral = "M" * thousands
    num -= thousands * 1000
    if num / 100 == 9
      numeral += "CM"
      num -= 900
    elsif num / 100 == 4
      numeral += "CD"
      num -= 400
    else
      five_hundreds = num / 500
      numeral += "D" * five_hundreds
      num -= five_hundreds * 500
      hundreds = num / 100
      numeral += "C" * hundreds
      num -= hundreds * 100
    end
    if num / 10 == 9
      numeral += "XC"
      num -= 90
    elsif num / 10 == 4
      numeral += "XL"
      num -= 40
    else
      fiftys = num / 50
      numeral += "L" * fiftys
      num -= fiftys * 50
      tens = num / 10
      numeral += "X" * tens
      num -= tens * 10
    end
    if num == 9
      numeral += "IX"
    elsif num == 4
      numeral += "IV"
    else
      fives = num / 5
      numeral += "V" * fives
      num -= fives * 5
    end
    puts numeral
  end
end

puts 1999.to_roman
