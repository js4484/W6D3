class Piece
    attr_reader :name 

    def initialize(name, color, board, position)
        @color = color 
        @name = name 
        @board = Board.new
        @position = position 
    end

    def to_s

    end

    def empty?

    end

    def valid_moves

    end

    def position=(value)

    end

    def symbol

    end
    
    def inspect
        @name 
    end

    private

    def move_into_check?(end_pos)

    end
end


# rows
# col

# Queen
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