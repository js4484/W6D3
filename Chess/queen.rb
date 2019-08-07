class Queen < Piece 
include Slidable

    def symbol
        
    end

    protected 
    def move_dirs
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