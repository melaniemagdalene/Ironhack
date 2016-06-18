class CounterPicker
	def initialize(operation, word_counter)
		@operation = operation
		@word_counter = word_counter
	end

	def perform_operation
		if @operation == "count words"
			puts "The number of words in your sentence was #{@word_counter.count_words}"
		elsif @operation == "count letters"
			puts "The number of letters in the sentence is #{@word_counter.count_letters}"
		elsif @operation == "reverse"
			puts "Your sentence reversed is #{@word_counter.reverse_sentence}"
		elsif @operation == "uppercase"
			puts "Your sentence uppercased is #{@word_counter.uppercase_sentence}"
		else
			puts "Your option is invalid"
		end
	end
end