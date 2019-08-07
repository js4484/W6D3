class King < Piece 
include Steppable

    def symbol
        
    end

    protected 
    def move_diffs
        [0,1]
        [0,-1]
        [1,0]
        [-1,0]
        [1,1]
        [1,-1]
        [-1,1]
        [-1,-1]
    end
end