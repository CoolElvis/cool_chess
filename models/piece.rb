class Piece
  attr_accessor :position, :color

  def initialize(position, color)
    @position =  position
    @color    = color
  end


  def movement_fields

  end

  def captures_fields

  end

end


class Pawn < Piece

  def movement_fields(board)
    if @color == :black
      if @position[1] == 2
        [[@position[0], @position[1] + 1], [@position[0], @position[1] + 2]]
      else
        [[@position[0], @position[1] + 1]]
      end
    elsif @color == :white
      if @position[1] == 7
        [[@position[0], @position[1] - 1], [@position[0], @position[1] - 2]]
      else
        [[@position[0], @position[1] - 1]]
      end
    end
  end

  def capture_fields(board)
    field = board.matrix[position[0]][position[1]]
    if .empty?

    end
  end

end

class Bishop < Piece

  def movement
    if (@color == :white && @position[1] == 7) || (@color == :black && @position[1] == 2)
      [@position[1] + 1, @position[1] + 2]
    else
      [@position[1] + 1]
    end
  end

end

class Rook < Piece


end

class Knight < Piece

end


class Queen < Piece

end

class King < Piece

end
