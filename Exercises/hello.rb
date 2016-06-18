puts "Hello, world!"
puts "I"
puts "like"
puts "pie."
print "Cookies"
print "are"
print "good"
print "too."

# This is a comment

my_variable = 10
my_other_variable = "ten"
operation_result = 12 * 34
puts "Operation result is "
puts operation_result

a_string = "This is a String"
another_string = 'This is a String'
multiline_string = """
A long time ago in a galaxy far, far away

It is a period of civil war. Rebel
spaceships, striking from a hidden
base, have won their first victory
against the evil Galactic Empire.
"""

puts "Hello\nworld"
puts 'Hello\nworld'

name = "Rafael"
puts "Hi #{name}"

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."

puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

file_contents = IO.read("read.rb")
puts "The source file contains: #{file_contents}"

puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)
