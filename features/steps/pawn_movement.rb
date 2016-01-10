class Spinach::Features::PawnMovement < Spinach::FeatureSteps

  step 'a new chess board' do
    @chess_board = Board.new
  end

  step 'Pawn color is black' do
    @pawn = Pawn.new [1, 2], :black
  end

  step 'Pawn color is white' do
    @pawn = Pawn.new [1, 0], :white
  end

  step 'Black Pawn position is initial' do
    @pawn.position = [1, 2]
  end

  step 'White Pawn position is initial' do
    @pawn.position = [1, 7]
  end

  step 'Black Pawn movement fields should be the 2 fields forward' do
    @pawn.movement_fields(@chess_board).must_equal [[1, 3],[1,4]]
  end

  step 'White Pawn movement fields should be the 2 fields forward' do
    @pawn.movement_fields(@chess_board).must_equal [[1, 6],[1,5]]
  end

  step 'Black Pawn position is no initial' do
    @pawn.position = [1, 5]
  end

  step 'White Pawn position is no initial' do
    @pawn.position = [1, 6]
  end

  step 'Black Pawn movement fields should be the 1 fields forward' do
    @pawn.movement_fields(@chess_board).must_equal [[1,6]]
  end

  step 'White Pawn movement fields should be the 1 fields forward' do
    @pawn.movement_fields(@chess_board).must_equal [[1,5]]
  end


end
