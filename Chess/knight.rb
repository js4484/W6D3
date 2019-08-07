class Knight < Piece 
    include Steppable
    def symbol
        
    end

    protected 
    def move_diffs
      [
    [1, 2],
    [2, 1],
    [-1, 2],
    [-1, -2],
    [1, -2],
    [2, -1],
    [-2, 1],
    [-2, -1]
    ].to_set
    end
end