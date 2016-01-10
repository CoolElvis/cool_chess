class Board
  attr_accessor :matrix

  def initialize
    @matrix = Hash.new
    (1..8).each do |i|
      @matrix[i] = Hash.new
      (1..8).each do |j|
        @matrix[i][j] = nil
      end
    end

    # Pawn allocation
    (1..8).each do |i|
      @matrix[i][7] = Pawn.new [i, 7], :white
      @matrix[i][2] = Pawn.new [i, 2], :black
     end

    # Queen allocation
    @matrix[4][8] = Queen.new [4, 8], :white
    @matrix[4][1] = Queen.new [4, 1], :black

    # King allocation
    @matrix[5][1] = King.new [5, 1], :black
    @matrix[5][8] = King.new [5, 8], :white

    # Rook allocation
    @matrix[1][8] = Rook.new [1, 8], :white
    @matrix[8][8] = Rook.new [8, 8], :white
    @matrix[1][1] = Rook.new [1, 1], :black
    @matrix[8][1] = Rook.new [8, 1], :black

    # Knight allocation
    @matrix[2][8] = Knight.new [2, 8], :white
    @matrix[7][8] = Knight.new [7, 8], :white
    @matrix[2][1] = Knight.new [2, 1], :black
    @matrix[7][1] = Knight.new [7, 1], :black

    # Bishop allocation
    @matrix[3][8] = Bishop.new [3, 8], :white
    @matrix[6][8] = Bishop.new [6, 8], :white
    @matrix[3][1] = Bishop.new [3, 1], :black
    @matrix[6][1] = Bishop.new [6, 1], :black
  end


  def print
    st = String.new
    @matrix.each do |k, v|
      st = k.to_s
      st += v.map{|_k,j| "#{j.class} #{j.color if j}" }.to_s
      p st
    end

  end




end
