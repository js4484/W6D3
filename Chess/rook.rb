class Rook < Piece 
    include Slideable

    def symbol
        if self.color == :white
            return "U+2656"
        else
            return "U+265C"
        end 
    end

    protected 
    def move_dirs
        [1,0]
        [-1,0]
        [0,1]
        [0,-1]
    end
end