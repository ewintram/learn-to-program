# English number
def english_number(number)
	if number < 0
		puts "Please enter a positive number"
	end
	if number == 0
		puts "zero"
	end

	numString = ""

	onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

	# for the millions

	right = number
	left = right/1000000

	right = right - left*1000000

	if left > 0
		millions = english_number(left)
		numString = numString + millions + " million"
		if right > 0
		numString = numString + " "
		end
	end

	# for the thousands

	left = right/1000
	right = right - left*1000

	if left > 0
		thousands = english_number left
		numString = numString + thousands + " thousand"
		if right > 0
		numString = numString + ", "
		end
	end

	# for the hundreds

	left = right/100
	right = right - left*100

	if left > 0
		hundreds = english_number left
		numString = numString + hundreds + " hundred"
		if right > 0
			numString = numString + " and "
		end
	end

	# for the tens

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

	# for the ones

	left = right
	right = 0

	if left > 0
		numString = numString + onesPlace[left-1]
	end

	numString
end
