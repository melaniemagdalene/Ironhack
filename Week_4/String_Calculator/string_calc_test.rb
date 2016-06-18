require_relative('lib/string_calculator')

calc = StringCalculator.new

if calc.add("") == 0
	puts "Returned zero for an empty string"
else
	puts "Something went wrong with empty string"
end

if calc.add("1") == 1
	puts "Returned an integer when given a single string"
else
	puts "Didn't return a number when given a single string"
end

if calc.add("1,2") == 3
	puts "Returned a number when given two numbers"
else
	puts "Didn't return a number when given two numbers"
end

if calc.add("1,2,3") == 6
	puts "Returned a number when given more than 2 numbers"
else
	puts "Didn't return a number when given multiple numbers"
end