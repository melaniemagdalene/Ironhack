require_relative('lib/blog')
require_relative('lib/post')

post1 = Post.new("Ironhack Breakfast", Time.now, "Ironhack event for new students.")
post2 = Post.new("Ironhack Lunch", Time.now, "Ironhack event for existing students.")
post3 = Post.new("Ironhack Dinner", Time.now, "Ironhack event for alumni.")

blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.publish_front_page

puts "type NEXT or PREVIOUS to move through the blog pages"
page = gets.chomp
if page == "NEXT"
	blog.publish_next_page
elsif page == "PREVIOUS"
	blog.publish_previous_page
else
	puts "LEARN TO TYPE"
end