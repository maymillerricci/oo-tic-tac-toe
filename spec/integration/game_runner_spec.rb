require_relative "../../tic_tac_toe/app/game_runner"

describe "Game runner" do
  it "Outputs a blank game board with coordinates" do
    mock_stdin = StringIO.new
    mock_stdout = StringIO.new
    expected_board_string = <<-BOARD
   1  2  3  
   __ __ __ 
A |  |  |  |
  |__|__|__|
B |  |  |  |
  |__|__|__|
C |  |  |  |
  |__|__|__|
BOARD

    GameRunner.new(mock_stdin, mock_stdout).run

    expect(mock_stdout.string).to eq(expected_board_string)
  end
end
