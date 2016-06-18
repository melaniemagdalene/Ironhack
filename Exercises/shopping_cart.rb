class ShoppingCart
	def initialize
		@items = []
	end

def add_to_cart(item)
	@items.push(item)
end

def checkout
	total = 0

	@items.each do | single_item |
		total += single_item.price
	end

		total
	end
end

class Item
	attr_accessor :price

	def initialize (name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

class HouseWare < Item
	def price
		if @price > 100
		@price * 0.95
		else
			@price
		end
	end
end

class Fruit < Item
	def price
		today = Time.now
		if today.saturday? || today.sunday?
			@price * 0.90
		else
			@price
		end
	end
end

#Store Menu
banana = Fruit.new("Banana", 10)
vaccuum = HouseWare.new("Vaccuum", 150)

orange_juice = Item.new("Orange", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

my_cart = ShoppingCart.new
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vaccuum)
my_cart.add_to_cart(rice)

puts "Your total today is #{my_cart.checkout}. Have a nice day!"
