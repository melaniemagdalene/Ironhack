class Car
	def initialize(car_sound, engine)
		@car_sound = car_sound
		@engine = engine
	end

	def start
		puts "The car goes #{@car_sound} and the engine goes #{@engine.move_pistons}."
	end
end