#Each Exercise

classmates = ["Christian", "Irene", "Ditter"]
	
classmates.each do |mate|
	puts "Hello, #{mate}!"
end

#or

classmates = ["Christian", "Irene", "Ditter"]
	
classmates.each do |mate|
	puts "Hello, " + mate
end


#Map Exercise

cities = ["miami", "madrid", "barcelona"]

city_capitalize = cities.map do | city |
	city.capitalize
end

p city_capitalize

#or

cities = ["miami", "madrid", "barcelona"]

pretty_cities = cities.map {|city| city.capitalize}

puts pretty_cities


#Reduce exercise

total = [1,2,3].reduce do |sum, num|
	sum +  num
end

puts total

#or

cities = ["miami", "madrid", "barcelona"]
	cities_length = cities.reduce(0) do  | sum , x | 
		sum + x.length
	end

puts cities_length / cities.count


#Each_With_Index

cities = ["miami", "madrid", "barcelona"]

cities.each_with_index do | city, index |
	puts "#{index}: #{city}"
end