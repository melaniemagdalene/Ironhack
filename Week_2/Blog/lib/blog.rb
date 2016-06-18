# Attributes
	# Hold a collection of different posts (List of posts)

# Actions
	# Publish (print) all of the post

class Blog

	def initialize 
		@posts = []
		@current_page = 1
		@posts_per_page = 3
	end

	def add_post(post)
		@posts.push(post)
	end

	def current_page
		@current_page
	end

	def publish_front_page
		puts "What page do you want to visit 1 - 2 - 3?"
		@current_page = gets.chomp.to_i

		first = (@current_page - 1) * 3
		last = (first + (@posts_per_page -1))

		@posts[first..last].each do | post |
			post.display_post
		end
	end

	def publish_next_page
		last_page = (@posts.length.to_f/@posts_per_page).ceil
		
			if @current_page == last_page
				puts "You're on the last page"
			else
				@current_page = @current_page + 1

			first = (@current_page - 1) * 3
			last = (first + (@posts_per_page -1))

			@posts[first..last].each do | post |
			post.display_post
			end
		end
	end

	def publish_previous_page
		if @current_page == 1
			puts "You're on the first page"
		else
			@current_page = @current_page - 1

			first = (@current_page - 1) * 3
			last = (first + (@posts_per_page -1))

			@posts[first..last].each do | post |
			post.display_post
			end
		end
	end
end