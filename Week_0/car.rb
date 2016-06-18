# What does a car do?
	# Honks
	# Starts
	# Plays Radio

# What defines my car?
	# Color
	# Make
	# Year
	# Engine
	# Price

class Car

	attr_accessor :color

	def initialize(my_color, my_noise)
		@color = my_color
		@sound = my_noise
	end

	# Instance Method
	def make_noise
		puts "My #{@color} car goes #{@sound}"
	end

	def sound
		puts @sound
	end

	def play_radio
		puts "Waka Flaka is going hard in the paint (on the radio)"
	end
end

class RaceCar < Car
	def make_noise
			puts "My #{color} car goes #{@sound.upcase}"
	end
end

volvo = Car.new("Red","Vrooom")
mazda = Car.new("Yellow","RRRRrrrr")
honda = Car.new("Orange", "bbbbb")
tesla = Car.new("Black","eeeee")
escalade = Car.new("Silver","tttt")
ferrari = RaceCar.new("Red", "vrooom vrooom")

volvo.make_noise
mazda.make_noise

tesla.play_radio
volvo.sound
honda.sound

escalade.color = "Green"
puts escalade.color
ferrari.make_noise
