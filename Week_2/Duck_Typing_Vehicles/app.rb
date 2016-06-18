require_relative ('lib/engine')
require_relative ('lib/car')
require_relative ('lib/wheel_counter')
require_relative ('lib/hoverboard')
require_relative ('lib/motorcycle')
require_relative ('lib/truck')
require_relative ('lib/sedan')
require_relative ('lib/unicycle')

ninja = Motorcycle.new
mazda = Sedan.new
hoverboard = Hoverboard.new
my_cycle = Unicycle.new
truck = Truck.new

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
wheel_counter.count_wheels