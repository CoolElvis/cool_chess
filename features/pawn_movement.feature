Feature: Pawn movement
  A pawn moves straight forward one square, if that square is vacant.
  If it has not yet moved, a pawn also has the option of moving two squares straight forward,
  provided both squares are vacant. Pawns cannot move backwards.
  Pawns are the only pieces that capture differently from how they move.
  A pawn can capture an enemy piece on either of the two squares diagonally
  in front of the pawn (but cannot move to those squares if they are vacant).

  Scenario: Black pawn
    Given Pawn color is black
    And a new chess board
    When Black Pawn position is initial
    Then Black Pawn movement fields should be the 2 fields forward
    When Black Pawn position is no initial
    Then Black Pawn movement fields should be the 1 fields forward

  Scenario: White pawn
    Given Pawn color is white
    And a new chess board
    When White Pawn position is initial
    Then White Pawn movement fields should be the 2 fields forward
    When White Pawn position is no initial
    Then White Pawn movement fields should be the 1 fields forward
