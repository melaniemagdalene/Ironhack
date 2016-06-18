#Attributes (Title, Date, Text)
	# Title
	# Date
	# Text

#Actions (Methods)
	#Print single post

class Post
	def initialize(title, date, text)
		@title = title
		@date = Time.now
		@text = text
	end

	def display_post
		puts "#{@title} posted at #{@time}" 
		puts "**************"
		puts "#{@text}"
		puts "----------------------"
	end
end

#Time.now automatically lists year, time, hour, etc