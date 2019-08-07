require "byebug"
require_relative "piece"

class Board

    UNIQUES = { [7,3] => "WQ", [0,3] => "BQ", [7,2] => "WB",
     [7,5] => "WB", [0,2] =>"BB", [0,5] => "BB",
    [7,0] => "WR", [7,7] => "WR", [0,0] => "BR", [0,7] => "BR",
    [7,1] => "WKN", [7,6] => "WKN", [0,1] => "BKN", [0,6] => "BKN",
    [7,4] => "WK", [0,4] => "BK"
    }
    attr_accessor :board 
    
    def initialize
        @board = Array.new(8) {Array.new(8, :N)}
        setup
    end
    
    def setup
        # debugger
        @board.each_with_index do |rows, idx1|
            rows.each_with_index do |ele, idx2|
                pos = [idx1, idx2]
                if idx1 == 1 
                    self[pos] = Piece.new("BP")
                elsif idx1 == 6
                    self[pos] = Piece.new("WP")
                elsif UNIQUES.keys.include?(pos)
                    self[pos] = Piece.new(UNIQUES[pos])
                end
            end
        end 
        @board       
    end
    
    def [](position)
        row, col = position
        @board[row][col]
    end

    def []=(position, value)
        row, col = position
        @board[row][col] = value
    end

    def move_piece(start_pos, end_pos)
    
        raise NoPieceError if self[start_pos] == :N
        row, col = end_pos
        raise OutOfBoundsError if !row.between?(0, 7) || !col.between?(0, 7)
        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = :N

    end
end

# piece of the same color
# off the board


class NoPieceError < StandardError
    def message
        return "No piece at given start position"
    end
end

class OutOfBoundsError < StandardError
    def message
        return "End position out of bounds"
    end
end

# setup hash {}
#  Queen
# white: 7, 3
# black: 0, 3

# Bishops
# w: 7, 2; 7, 5
# b: 0, 2; 0, 5

# Rooks
# w: 7, 0; 7, 7
# b: 0, 0; 0, 7

# Knights
# w: 7, 1; 7, 6
# b: 0, 1; 0, 6

# Kings
# w: 7, 4
# b: 0, 4

# Pawn
# w: 6, 0 -- 6, 7
# b: 1, 0 -- 1, 7