class HomeSorter
	def initialize(home)
		@homes = home
	end

	def home_printer
		@homes.each do | home |
			puts "#{home.name} is in #{home.city} starting at #{home.price}"
		end
	end
end