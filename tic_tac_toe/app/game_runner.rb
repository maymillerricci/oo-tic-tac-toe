require_relative "board_builder"
require_relative "move_requester"

class GameRunner
  attr_reader :stdin, :stdout

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def run
    stdout.puts BoardBuilder.new.run
    MoveRequester.new(stdin, stdout).run
  end
end
