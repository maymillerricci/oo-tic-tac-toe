require_relative "../../tic_tac_toe/app/game_runner"

describe "Game runner" do
  it "Outputs a blank game board" do
    mock_stdin = StringIO.new
    mock_stdout = StringIO.new

    GameRunner.new(mock_stdin, mock_stdout).run

    expect(mock_stdout.string.chomp).to eq("run run")
  end
end
