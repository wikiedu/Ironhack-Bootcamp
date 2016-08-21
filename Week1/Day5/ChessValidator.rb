require 'pry'

class Board
	attr_accessor :board
	def initialize (board)
		@board=board
	end

	def grid
		empty_grid=Array.new(8){Array.new(8)}
	end

	def status(position)

	end
end


class Roock
end

class ChessValidator
	attr_accessor :board
	def initialize (board)
		@board=board
	end

def is_empty(cell)


end

def convert_to_index(cell)
	cell_array=cell.split("")
	correct_cell_array=[]

	horizontal_array=["a","b","c","d","e","f","g","h"]
	horizontal_index=horizontal_array.index(cell_array[0])	
	# binding.pry
	correct_cell_array.push(horizontal_index)
	correct_cell_array.push(8-cell_array[1].to_i)
end

end

board_file=IO.readlines('simple_board.txt').map &:split
board=Board.new(board_file)
puts board_file
