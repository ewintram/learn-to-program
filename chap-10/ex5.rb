# Ninety-nine bottles of beer
def english_number(number)

  numString = ""

	onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

	if number == 0
		return "zero"
	end

	right = number
	left = right/1000

	right = right - left*1000

	if left > 0
		thousands = english_number(left)
		numString = numString + thousands + " thousand"
		if right > 0
		  numString = numString + ", "
		end
	end

	left = right/100
	right = right - left*100

	if left > 0
		hundreds = english_number(left)
		numString = numString + hundreds + " hundred"
		if right > 0
			numString = numString + " and "
		end
	end

	left = right/10
	right = right - left*10

	if left > 0
		if ((left == 1) and (right > 0))
			numString = numString + teenagers[right-1]
			right = 0
		else
			numString = numString + tensPlace[left-1]
		end

		if right > 0
			numString = numString + "-"
		end
	end

	left = right
	right = 0

	if left > 0
		numString = numString + onesPlace[left-1]
	end
	numString
end

bottles_i = 895
while bottles_i > 1
	bottles = english_number(bottles_i)
	puts "#{bottles.capitalize} bottles of beer on the wall,"
	puts "#{bottles.capitalize} bottles of beer."
	bottles = english_number(bottles_i -= 1)
	puts "Take one down, pass it around,"

  if bottles_i == 1
	  puts "One bottle of beer on the wall."
  else
	  puts "#{bottles.capitalize} bottles of beer on the wall."
  end

  if bottles_i == 1
	  puts "One bottle of beer on the wall,"
	  puts "One bottle of beer."
	  puts "Take one down, pass it around,"
	  puts "No more bottles of beer on the wall."
  end
end
