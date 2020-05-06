require_relative "../../tic_tac_toe/app/game_runner"

describe "Game runner" do
  it "Outputs a game board and asks for coordinates" do
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
    allow(mock_stdin).to receive(:gets).and_return("G3", "B4", "B2")

    GameRunner.new(mock_stdin, mock_stdout).run

    expect(mock_stdout.string).to include(expected_board_string)
    expect(mock_stdout.string).to include("Enter your move")
    expect(mock_stdout.string).to include(
      (["Please enter valid coordinates"] * 2).join("\n")
    )
  end
end
