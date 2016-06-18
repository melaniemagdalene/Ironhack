class WheelCounter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def count_wheels
		total_wheels = 0
			@vehicles.each do | vh |
				total_wheels += vh.wheels
			end
		puts total_wheels
	end
end