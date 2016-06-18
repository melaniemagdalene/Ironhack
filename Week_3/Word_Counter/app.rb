# app.rb
require("pry")
require_relative("lib/authenticator.rb")
require_relative("lib/word_counter")
require_relative("lib/counter_picker")

auth = Authenticator.new("Josh", "swordfish")

puts "Enter your username!"
name_input = gets.chomp

puts "Enter your password!"
password_input = gets.chomp

if auth.authenticate?(name_input, password_input)
	puts "Welcome back, #{name_input}"
	puts "Enter a sentence"
 	sentence_input = gets.chomp
 	my_counter = WordCounter.new(sentence_input)

 	binding.pry
 	puts "Enter an operation: \ncount words |\n count letters |\n reverse |\n upcase |\n downcase"
 	operation = gets.chomp
 	counter_picker = CounterPicker.new(operation, my_counter)
 	counter_picker.perform_operation
else
	binding.pry
	puts "Go away, #{name_input}. No word counter for you"
end