i = 1

while i < 100
	if i % 15 == 0
		puts "FizzBuzz"
	elsif i % 3 == 0 
		puts "Fizz"
	elsif i % 5 == 0
		puts "Buzz"
	elsif i == 1
		puts i.to_s + "Bang"
	else
		puts i
	end
i = i + 1
end

#i = (1..100)
#i.each do |i|
#	if i.include?(1)
#		puts i + "Bang"
#	elsif i % 15 == 0
#		puts "FizzBuzz"
#	elsif i % 3 == 0
#		puts "Fizz"
#	elsif i % 5 == 0
#		puts "Buzz"
#	else
#		puts i
#	end
#end