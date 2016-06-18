require_relative('lib/space_ship')
require_relative('lib/space_ship_battle')

#Before creating any spaceships
#SpaceShip.number_of_spaceships	

millennium_falcon = SpaceShip.new("Millennium Falcon", 100, "Mega Blaster Ray", 9001, 7)
falcon_nine = SpaceShip.new("Falcon Nine", 100, "Elon Musk Blaster Cannon", 11000, 9)

#After we've created a couple of spaceships
#SpaceShip.number_of_spaceships
millennium_falcon.attack(falcon_nine)
falcon_nine.attack(millennium_falcon)

my_battle = SpaceShipBattle.new(millennium_falcon, falcon_nine)
my_battle.battle
#millennium_falcon.fly
# => "Flying at #{speed}"