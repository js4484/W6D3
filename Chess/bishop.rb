class Bishop < Piece 
include Slidable

    def symbol
        :B         
    end

    protected 
    def move_dirs
        [-1, 1]
        [-1, -1]
        [1, 1]
        [1, -1]
    end
end