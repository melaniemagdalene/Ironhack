require_relative('lib/horizontal_movement')
require_relative('lib/vertical_movement')
require_relative('lib/diagonal_movement')
require_relative('lib/l_shaped')
require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/pawn')
require_relative('lib/black_pawn')
require_relative('lib/white_pawn')
require_relative('lib/king')
require_relative('lib/queen')
require_relative('lib/knight')
require_relative('lib/validator')
require_relative('lib/board')


# Rook Tests
# rook = Rook.new(1, 8)
# p "Rook Good"
# p rook.can_move?(2, 8)
# p rook.can_move?(6, 8)
# p "Rook Bad"
# p rook.can_move?(7, 3)

# puts " "
# # Bishop Tests
# bishop = Bishop.new(3, 8)
# p "Bishop Good"
# p bishop.can_move?(2, 7)
# p bishop.can_move?(1, 6)
# p "Bishop Bad"
# p bishop.can_move?(2, 5)
# puts " "

# # Queen Tests
# q = Queen.new(4, 8)
# p "Queen Good"
# p q.can_move?(6, 8)
# p q.can_move?(4, 6)
# p q.can_move?(3, 7)
# p "Queen Bad"
# p q.can_move?(2, 7)
# puts ""

# # King Tests
# k = King.new(1, 1)
# p "King Good"
# p k.can_move?(1, 2)
# p k.can_move?(2, 1)
# p k.can_move?(2, 2)
# p "King Bad"
# p k.can_move?(1, 3)
# p k.can_move?(3, 1)
# p k.can_move?(3, 3)

# # Pawn Tests
# puts "Black Pawn Good"
# bp = BlackPawn.new(1, 4)
# p bp.can_move?(1, 2)
# p bp.can_move?(1, 3)
# puts "Black Pawn Bad"
# p bp.can_move?(1, 5)
# p bp.can_move?(2, 4)
# p bp.can_move?(1, 7)
# p bp.can_move?(1, 2)
# puts ""
# puts "White Pawn Good"
# wp = WhitePawn.new(1, 5)
# p wp.can_move?(1, 7)
# p wp.can_move?(1, 6)
# puts "White Pawn Bad"
# p wp.can_move?(1, 7)
# p wp.can_move?(1, 8)
# p wp.can_move?(2, 7)
# puts ""
# # Knight Tests
# puts "Knight Good"
# kn = Knight.new(3, 4)
# p kn.can_move?(5, 5)
# p kn.can_move?(2, 6)
# p kn.can_move?(1, 5)
# p kn.can_move?(2, 2)
# p kn.can_move?(4, 2)

board = []
9.times do 
	board.push([])
end

board[1][8] = Rook.new(8, 1, :black)
board[1][1] = Rook.new(1, 1, :black)
board[8][1] = Rook.new(1, 8, :white)
board[8][8] = Rook.new(8, 8, :white)

board[1][7] = Knight.new(7, 1, :black)
board[1][2] = Knight.new(2, 1, :black)
board[8][7] = Knight.new(7, 8, :white)
board[8][2] = Knight.new(2, 8, :white)

board[1][6] = Bishop.new(6, 1, :black)
board[1][3] = Bishop.new(3, 1, :black)
board[8][6] = Bishop.new(6, 8, :white)
board[8][3] = Bishop.new(3, 8, :white)

board[1][4] = Queen.new(2, 1, :black)
board[8][4] = Queen.new(2, 8, :white)

board[1][5] = King.new(5, 1, :black)
board[8][5] = King.new(5, 8, :white)

8.times do | i | 
	board[2][i + 1] = BlackPawn.new(i + 1, 2, :black)
end

8.times do | i | 
	board[7][i + 1] = WhitePawn.new(i + 1, 7, :white)
end

moves = IO.readlines('moves.txt')
my_board = Board.new(board)
# puts my_board.print_board
# p my_board.can_move?(7, 1,  6, 3)
# p my_board.can_move?(5, 1,  4, 2)

# puts "Bad moves"
# p my_board.can_move?(5, 4,  1, 1)
# p my_board.can_move?(1, 1,  50, 50)
# p my_board.can_move?(8, 8,  8, 8)
# p my_board.can_move?(8, 1,  7, 8)
validator = Validator.new(moves, my_board)
validator.run_validations